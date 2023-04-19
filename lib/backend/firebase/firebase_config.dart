import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCKQlSPFGQ6oQpRN_OwditcpNO594uV5Xw",
            authDomain: "centrodiurnoancianos.firebaseapp.com",
            projectId: "centrodiurnoancianos",
            storageBucket: "centrodiurnoancianos.appspot.com",
            messagingSenderId: "1008299331244",
            appId: "1:1008299331244:web:565f3d31a0d68c66015909",
            measurementId: "G-9X2C0XDTR5"));
  } else {
    await Firebase.initializeApp();
  }
}
