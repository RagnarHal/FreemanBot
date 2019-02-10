import firebase from 'firebase';
import 'firebase/firestore';
import 'firebase/auth';
import env from './env';

firebase.initializeApp({
  apiKey: "AIzaSyDoJEuT_Bo8u57fp47i5fVjcuxcemL3EyU",
  authDomain: "freemanbot-1516651001919.firebaseapp.com",
  databaseURL: "https://freemanbot-1516651001919.firebaseio.com",
  projectId: "freemanbot-1516651001919",
  storageBucket: "freemanbot-1516651001919.appspot.com",
  messagingSenderId: "185485940912"
});

firebase.auth().signInWithEmailAndPassword(env.firebase.user, env.firebase.password);

export const FieldValue = firebase.firestore.FieldValue;
export const FieldPath = firebase.firestore.FieldPath;

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
