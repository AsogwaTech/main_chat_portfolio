import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:main_chat_portfolio/helper/auth_help.dart';
//import 'package:main_chat_portfolio/views/signin.dart';
import 'package:main_chat_portfolio/views/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: const AuthHelper(),
    );
  }
}

