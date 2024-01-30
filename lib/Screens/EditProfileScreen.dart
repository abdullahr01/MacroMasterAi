import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/InputTextField.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final editNameController = TextEditingController();
  final editEmailController = TextEditingController();
  final editPasswordController = TextEditingController();
  final editMobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    initMediaQuerySize(context);
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back),
        title: const PoppinsTextStyle(
            text: 'Edit Profile',
            textSize: 18,
            textColor: Colors.black,
            isBold: true),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: widgetHeight(30), left: widgetWidth(30), right: widgetWidth(30)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: widgetHeight(180),
                    width: widgetWidth(180),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Image(
                      image: AssetImage('images/avatar-removebg-preview.png'),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 5,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: widgetHeight(30),
              ),
              MyTextField(
                controller: editNameController,
                labelText: "Name",
                obscureText: false,
                iconTextField: const Icon(Icons.person_outline_rounded),
              ),
              SizedBox(height: widgetHeight(15)),
              MyTextField(
                controller: editMobileNumberController,
                labelText: "Mobile Number",
                obscureText: false,
                iconTextField: const Icon(Icons.phone),
              ),
              SizedBox(height: widgetHeight(15)),
              MyTextField(
                controller: editEmailController,
                labelText: "Email",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              SizedBox(height: widgetHeight(15)),
              MyTextField(
                controller: editPasswordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              SizedBox(
                height: widgetHeight(40),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                },
                child: Container(
                  height: widgetHeight(80),
                  width: widgetWidth(300),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red),
                  child: const Center(
                    child: PoppinsTextStyle(
                        text: 'Edit Profile',
                        textSize: 16,
                        textColor: Colors.white,
                        isBold: true),
                  ),
                ),
              ),
              SizedBox(
                height: widgetHeight(30),
              ),
              Padding(
                padding: EdgeInsets.only(left: widgetWidth(90), right: widgetWidth(90)),
                child: const Divider(
                  height: 10,
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: widgetHeight(30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PoppinsTextStyle(
                    text: 'Want to delete your account?',
                    textSize: 15,
                    textColor: Colors.grey,
                    isBold: true),
                     GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                },
                child: Container(
                  height: widgetHeight(70),
                  width: widgetWidth(80),
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.red, width: 5),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: const Center(
                    child: PoppinsTextStyle(
                        text: 'Delete',
                        textSize: 16,
                        textColor: Colors.white,
                        isBold: true),
                  ),
                ),
              ),
            
                ],
              ),
             ],
          ),
        ),
      ),
    );
  }
}
