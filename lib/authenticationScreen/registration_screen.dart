import 'package:flutter/material.dart';

import '../widgets/custom_text_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}





class _RegistrationScreenState extends State<RegistrationScreen> {

//personal information
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController agetextEditingController = TextEditingController();
  TextEditingController phoneNotextEditingController = TextEditingController();
  TextEditingController citytextEditingController = TextEditingController();
  TextEditingController countrytextEditingController = TextEditingController();
  TextEditingController profileHeadingtextEditingController = TextEditingController();
  TextEditingController objectivetextEditingController = TextEditingController(); //lookingForInaPartner

  //appearance
  TextEditingController heighttextEditingController = TextEditingController();
  TextEditingController weighttextEditingController = TextEditingController();


  //life-style
  TextEditingController indoortextEditingController = TextEditingController();
  TextEditingController outdoortextEditingController = TextEditingController();


  //background - cv
  TextEditingController nationalitytextEditingController = TextEditingController();
  TextEditingController breedtextEditingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:Column(
            children: [

              const SizedBox(
                height:100 ,
              ),
              const Text(
                "Create account",
                style: TextStyle(
                  fontSize:22 ,
                  color: Colors.white,
                  fontWeight: FontWeight.bold ,

                ),
              ),
              const SizedBox(
                height:100 ,
              ),
              const Text(
                "to get started now. ",
                style: TextStyle(
                  fontSize:22 ,
                  color: Colors.white,
                  fontWeight: FontWeight.bold ,

                ),
              ),
              const SizedBox(
                height:100 ,
              ),

              //choose image circle avatar
              GestureDetector(
                onTap: ()
                    {

                    },
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/catprofilepic.jpg"
                  ),
                  backgroundColor: Colors.black,
                ),
              ),


              const SizedBox(
                height:100 ,
              ),
              //personal info

              const Text(
                "Personal Info :  ",
                style: TextStyle(
                  fontSize:20 ,
                  color: Colors.white,
                  fontWeight: FontWeight.bold ,

                ),
              ),

              const SizedBox(
                height:12 ,
              ),

              //name
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: nametextEditingController,
                  labelText: "Name",
                  iconData: Icons.person_outline,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 24,
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
                height: 24,
              ),

              //age
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: agetextEditingController,
                  labelText: "Age",
                  iconData: Icons.numbers,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),

              //phoneNo
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordtextEditingController,
                  labelText: "Phone",
                  iconData: Icons.phone,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),

              //city
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: citytextEditingController,
                  labelText: "City",
                  iconData: Icons.location_city,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),

              //country
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: countrytextEditingController,
                  labelText: "Country",
                  iconData: Icons.location_city,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),

              //profileHeading
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: profileHeadingtextEditingController,
                  labelText: "Profile Heading",
                  iconData: Icons.text_fields,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),

              //objective
              SizedBox(
                //auto adjustment for screens
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailtextEditingController,
                  labelText: "What is your objective ? ",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),


              const SizedBox(
                height: 24,
              ),


            ],
          )
        )
      )


    );
  }
}
