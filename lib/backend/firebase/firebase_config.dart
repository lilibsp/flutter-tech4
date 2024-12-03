import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCp11y4TcvNh3-x56H2KNrO-u3Y38gwmvE",
            authDomain: "criacao-eventos.firebaseapp.com",
            projectId: "criacao-eventos",
            storageBucket: "criacao-eventos.firebasestorage.app",
            messagingSenderId: "796815111837",
            appId: "1:796815111837:web:741ae5ea71be7fc97e0674"));
  } else {
    await Firebase.initializeApp();
  }
}
