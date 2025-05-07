import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAr1huynwbJdlwStFC9u8LKR_azNiNIDks",
            authDomain: "shortpro-2c726.firebaseapp.com",
            projectId: "shortpro-2c726",
            storageBucket: "shortpro-2c726.firebasestorage.app",
            messagingSenderId: "1049893301251",
            appId: "1:1049893301251:web:e50e2904b87df10ca4b236",
            measurementId: "G-GZYC8F2ZR6"));
  } else {
    await Firebase.initializeApp();
  }
}
