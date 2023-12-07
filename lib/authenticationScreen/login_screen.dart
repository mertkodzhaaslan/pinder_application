import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinder_application/authenticationScreen/registration_screen.dart';
import 'package:pinder_application/widgets/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  bool showProgressBar = false ;

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
                "images/pinder_logo.png"
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

              const SizedBox(
                height: 28,
              ),

              //e-mail
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailtextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 24,
              ),



              //password
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordtextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),


              const SizedBox(
                height: 30,
              ),



              //login button

              Container(
                width: MediaQuery.of(context).size.width-36 ,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),


              ),


              const SizedBox(
                height: 16,
              ),

            //dont have a account , sign up here button
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [

                  Text(
                    "Dont have an account ? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  InkWell(
                    onTap: ()
                    {
                      Get.to(RegistrationScreen());

                    },
                    child: const Text(
                      "Sign up here ! ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],

              ),

              const SizedBox(
                height: 16,
              ),

              showProgressBar == true
                  ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink) ,
              )
                  : Container(),








            ]),
        )
        
        ,)


    );
  }
}
