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

export default firebase.firestore();
