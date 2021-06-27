import 'package:crud/pages/esp_nueva.dart';
import 'package:crud/pages/especialidades.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

import 'Myhome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Agenda',
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) => Especialidades(),
          'Myhome_page.dart': (BuildContext context) => MyHomePage(),
          "esp_nueva.dart": (BuildContext context) => Especialidad_New(),
          "especialidades": (BuildContext context) => Especialidades(),
        });
  }
}
