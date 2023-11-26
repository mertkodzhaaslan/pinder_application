import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(
                height: 80,
              ),


              Image.asset(
                "images/Pinder logo.png"
              ),


              const Text(
                "Welcome",
                style: TextStyle(
                  height: 3,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),

              const Text(
                "Get into the nest to find best match for your pet ",
                style: TextStyle(
                  height: 4,
                  fontSize: 18,
                  fontWeight: FontWeight.w500

                ),
              ),




              
            ]),
        )
        
        ,)


    );
  }
}
