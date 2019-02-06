import firebase from 'firebase-admin';

firebase.initializeApp({
  apiKey: "AIzaSyDoJEuT_Bo8u57fp47i5fVjcuxcemL3EyU",
  authDomain: "freemanbot-1516651001919.firebaseapp.com",
  databaseURL: "https://freemanbot-1516651001919.firebaseio.com",
  projectId: "freemanbot-1516651001919",
  storageBucket: "freemanbot-1516651001919.appspot.com",
  messagingSenderId: "185485940912"
});

export default firebase.firestore();
