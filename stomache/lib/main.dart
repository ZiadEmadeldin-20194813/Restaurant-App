import 'package:flutter/material.dart';
import 'package:stomache/start.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'mainMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'breakfast.dart';
import 'CheesyPizza.dart';
import 'Healthy_Taco_Salad.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(MaterialApp( debugShowCheckedModeBanner: false,
      home:MyApp()));
}

class MyApp extends StatefulWidget {

   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home: start(),




    );
  }
  }