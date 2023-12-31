import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinder_application/authenticationScreen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pinder',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.cyan,
      ),
      home: LoginScreen(), // application will start from loginscreen .
    );
  }
}
