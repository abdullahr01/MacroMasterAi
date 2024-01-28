import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/InputTextField.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileNumberController = TextEditingController();

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
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  } on FirebaseAuthException catch (e) {
    // Dismiss the loading circle
    Navigator.of(context, rootNavigator: true).pop();

    // Handling different FirebaseAuthException error codes
    String errorMessage;
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
                  height: 120,
                  width: 120,
                  child: Image.asset('images/macromsaster.png.png'),
                ),
              ),
              MyTextField(
                controller: nameController,
                labelText: "Name",
                obscureText: false,
                iconTextField: const Icon(Icons.person_outline_rounded),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: mobileNumberController,
                labelText: "Mobile Number",
                obscureText: false,
                iconTextField: const Icon(Icons.phone),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: emailController,
                labelText: "Email",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  createTheUser();
                },
                child: Container(
                  height: 50,
                  width: 250,
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
