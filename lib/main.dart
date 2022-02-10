import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raselshop/screens/Connectioncheck.dart';

Future <void> main() async {

WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: FirebaseOptions(
      apiKey: "AIzaSyDIzlb0xC2tZYm2fNkz6SOT_fddg1L9BS8",
      databaseURL: "https://raselshop-403dd-default-rtdb.firebaseio.com/",
      projectId: "raselshop-403dd",
      messagingSenderId: "397319312858",
      appId: "1:397319312858:android:78e65d0ea81f05bbcd5ce3",
  )
  );
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cnnectioncheck(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
        
      ), )
      
    );
  }
}




