import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCdxTh1ze6S1VhzVY4ReGQcsd5HfgWiVCI",
            authDomain: "healthai-1311.firebaseapp.com",
            projectId: "healthai-1311",
            storageBucket: "healthai-1311.firebasestorage.app",
            messagingSenderId: "390984196722",
            appId: "1:390984196722:web:6a9727846a2cb4c2a118eb",
            measurementId: "G-JRG18QQ8Z8"));
  } else {
    await Firebase.initializeApp();
  }
}
