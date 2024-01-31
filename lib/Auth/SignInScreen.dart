import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:macromasterai/Auth/LoginScreen.dart';
import 'package:macromasterai/Constants/InputTextField.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final cityController = TextEditingController();

  late String errorMessage;

  void createTheUser() async {
    // Show loading circle
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );

    try {
      // Login the user
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // String userId = userCredential.user!.uid;
      // String username = nameController.text;
      User? user = userCredential.user;
      if(user!=null) {
        await FirebaseFirestore.instance.collection("Users").doc(user.uid).set({
        "Name": nameController.text,
        "Age": ageController.text,
        "PhoneNumber": mobileNumberController.text,
        "Email": emailController.text,
        "Password": passwordController.text,
        "City": cityController.text
      });
      }
      else {
        errorMessage = "User creation failed";
        showSnackbar(errorMessage);
      }

      
      
    } on FirebaseAuthException catch (e) {
      // Dismiss the loading circle
      Navigator.of(context, rootNavigator: true).pop();

      // Handling different FirebaseAuthException error codes
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found for that email.';
          break;
        case 'email-already-in-use':
          errorMessage = 'Email already in-use';
          break;
        // case 'invalid-email':
        //   errorMessage = 'Email address is invalid.';
        //   break;
        // Add more cases for different error codes as needed

        default:
          // Handle unexpected error codes
          errorMessage = 'An unexpected error occurred. Please try again.';
          break;
      }
      print("FirebaseAuthException caught: ${e.code}");
      showSnackbar(errorMessage);
    } finally {
      if (mounted) {
        // Check if the loading circle is still present, then dismiss it
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      }
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your login screen widget
    );
  }

  void showSnackbar(String errorMessage) {
    final snackBar = SnackBar(
      content: Text(errorMessage),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    initMediaQuerySize(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'MacroAi',
                child: SizedBox(
                  height: widgetHeight(180),
                  width: widgetHeight(180),
                  child: Image.asset('images/macromsaster.png.png'),
                ),
              ),
              MyTextField(
                controller: nameController,
                labelText: "Name",
                obscureText: false,
                iconTextField: const Icon(Icons.person_outline_rounded),
              ),
              SizedBox(height: widgetHeight(16)),
              MyTextField(
                controller: ageController,
                labelText: "Age",
                obscureText: false,
                iconTextField: const Icon(Icons.monitor_weight_outlined),
              ),
              SizedBox(height: widgetHeight(16)),
              MyTextField(
                controller: mobileNumberController,
                labelText: "Mobile Number",
                obscureText: false,
                iconTextField: const Icon(Icons.phone),
              ),
              SizedBox(height: widgetHeight(16)),
              MyTextField(
                controller: ageController,
                labelText: "City",
                obscureText: false,
                iconTextField: const Icon(Icons.location_city_rounded),
              ),
              SizedBox(height: widgetHeight(16)),
              MyTextField(
                controller: emailController,
                labelText: "Email",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              SizedBox(height: widgetHeight(16)),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              
              SizedBox(height: widgetHeight(60)),
              GestureDetector(
                onTap: () {
                  createTheUser();
                },
                child: Container(
                  height: widgetHeight(80),
                  width: widgetWidth(220),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: const Center(
                    child: Text(
                      "Create the Account",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
