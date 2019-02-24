import lt from "long-timeout";
import moment from "moment";
import { firestore } from "../firestore";
import env from "../env";
import logger from "../logger";
import cuid from "cuid";

const REMINDERS = "reminders";
const REMINDERS_COLLECTION_NAME = env.isDevelopment
  ? `${REMINDERS}--dev`
  : REMINDERS;

const remindersRef = firestore.collection(REMINDERS_COLLECTION_NAME);

export function createReminderDaemon(discordClient) {
  const pendingReminders = new Map();
  let detachListener = null;

  return {
    start,
    destroy
  };

  function start() {
    destroy();
    detachListener = setupListener();
  }

  function destroy() {
    if (typeof detachListener === "function") {
      detachListener();
      detachListener = null;
    }
    pendingReminders.forEach(({ timer }) => lt.clearTimeout(timer));
    pendingReminders.clear();
  }

  function setupListener() {
    return remindersRef.onSnapshot(querySnapshot => {
      querySnapshot.docChanges().forEach(change => {
        if (change.type === "added") {
          handleReminderAdded(change.doc.id, change.doc.data());
        }
        if (change.type === "modified") {
          handleReminderModified(change.doc.id, change.doc.data());
        }
        if (change.type === "removed") {
          handleReminderRemoved(change.doc.id);
        }
      });
    });
  }

  function handleReminderAdded(id, reminder) {
    const { triggerTimestamp } = reminder;
    const diff = moment(triggerTimestamp).diff(moment(), "milliseconds");
    const timer = lt.setTimeout(() => sendReminder(id), Math.max(diff, 1000));

    pendingReminders.set(id, {
      reminder,
      timer
    });
    logger.info({
      message: "Reminder scheduled",
      id,
      triggerTime: moment(triggerTimestamp).format(),
      now: moment().format()
    });
  }

  function handleReminderModified(id, reminder) {
    handleReminderRemoved(id);
    handleReminderAdded(id, reminder);
    logger.info({
      message: "Reminder modified and re-scheduled",
      id,
      triggerTime: moment(reminder.triggerTimestamp).format(),
      now: moment().format()
    });
  }

  function handleReminderRemoved(id) {
    const { timer } = pendingReminders.get(id);
    lt.clearTimeout(timer);
    pendingReminders.delete(id);
    logger.info({ message: "Reminder unscheduled", id });
  }

  async function sendReminder(id) {
    const { reminder } = pendingReminders.get(id);

    const { authorId, authorUsername, subjectId, message } = reminder;
    const subject = discordClient.users.get(subjectId);

    if (subject) {
      const authorString =
        authorId.trim() === subjectId.trim() ? "you" : authorUsername;
      await subject.send(
        `Hey, ${authorString} asked me to remind you: '${message}'`
      );
    }

    return deleteReminder(id);
  }
}

export function createReminder({
  authorId,
  authorUsername,
  subjectId,
  message,
  triggerTimestamp
}) {
  return remindersRef.doc().set({
    authorId,
    slug: cuid.slug().toUpperCase(),
    authorUsername,
    subjectId,
    message,
    triggerTimestamp
  });
}

export function deleteReminder(id) {
  return remindersRef.doc(id).delete();
}

export function updateReminder(id, { message, triggerTimestamp }) {
  return remindersRef.doc(id).update({
    message,
    triggerTimestamp
  });
}

export async function getRemindersForAuthor(authorId) {
  const querySnapshot = await remindersRef
    .where("authorId", "==", authorId)
    .orderBy("triggerTimestamp", "asc")
    .get();
  const reminders = [];
  querySnapshot.forEach(queryDocumentSnapshot => {
    reminders.push({
      ...queryDocumentSnapshot.data(),
      id: queryDocumentSnapshot.id
    });
  });
  return reminders;
}

export async function getReminderById(reminderId) {
  const documentSnapshot = await remindersRef.doc(reminderId).get();

  if (!documentSnapshot.exists) {
    return undefined;
  }

  return {
    id: documentSnapshot.id,
    ...documentSnapshot.data()
  };
}

export async function getReminderBySlug(slug) {
  const querySnapshot = await remindersRef
    .where("slug", "==", slug.toUpperCase())
    .limit(1)
    .get();

  const [reminder] = querySnapshot.docs.map(doc => ({
    id: doc.id,
    ...doc.data()
  }));

  return reminder;
}
