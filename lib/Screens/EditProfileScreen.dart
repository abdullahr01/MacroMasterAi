import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/InputTextField.dart';

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
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Image(
                      image: AssetImage('images/avatar-removebg-preview.png'),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
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
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: editNameController,
                labelText: "Name",
                obscureText: false,
                iconTextField: const Icon(Icons.person_outline_rounded),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: editMobileNumberController,
                labelText: "Mobile Number",
                obscureText: false,
                iconTextField: const Icon(Icons.phone),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: editEmailController,
                labelText: "Email",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: editPasswordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                },
                child: Container(
                  height: 50,
                  width: 270,
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70, right: 70),
                child: Divider(
                  height: 10,
                  thickness: 2,
                ),
              ),
              const SizedBox(
                height: 20,
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
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 5),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent),
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
