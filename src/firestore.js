import firebase from 'firebase-admin';
import env from './env';

firebase.initializeApp({
  credential: firebase.credential.cert({
    clientEmail: env.firebase.clientEmail,
    privateKey: env.firebase.privateKey,
    projectId: env.firebase.projectId
  }),
  databaseURL: env.firebase.databaseUrl
});

export const FieldValue = firebase.firestore.FieldValue;
export const FieldPath = firebase.firestore.FieldPath;

export const firestore = firebase.firestore();

export async function getRandomDocumentSnapshotInCollection(collectionRef, retryCount = 0) {
  const querySnapshot = await collectionRef
    .where(FieldPath.documentId(), '>', collectionRef.doc().id)
    .limit(1)
    .get();

  // Prevent infinite loop
  if (retryCount > 10) {
    return null;
  }

  // If a document was not found, try again
  if (!querySnapshot.docs.length) {
    return getRandomDocumentSnapshotInCollection(collectionRef, retryCount++);
  }

  return querySnapshot.docs[0];
}

export async function getRandomDocumentInCollection(collectionRef) {
  const docRef = await getRandomDocumentSnapshotInCollection(collectionRef);

  return docRef.data();
}
