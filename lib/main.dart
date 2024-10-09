import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:periods/pages/Intro1.dart';
import 'package:periods/pages/dashboard.dart';
import "package:periods/pages/login.dart";

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyCoPFKOysCwp8lbAJAGkonPa_myl7lJpfc",
          appId: "1:516775553288:android:ec0af1dcef5417f34ee4bd",
          messagingSenderId: "516775553288",
          projectId: "femeeflow"
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      ),
      home:  Intro1(),
    );
  }
}
