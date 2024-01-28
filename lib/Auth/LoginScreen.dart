// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:macromasterai/Auth/SignInScreen.dart';
import 'package:macromasterai/Constants/InputTextField.dart';
import 'package:macromasterai/Constants/SquareTiles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = false;
  

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

void loginTheUser() async {
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
    await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      case 'invalid-credential':
        errorMessage = 'Wrong password or username provided for that user.';
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



  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'MacroAi',
                child: SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset('images/macromsaster.png.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                labelText: "Gmail",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignIn()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  loginTheUser();
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.7,
                    color: Colors.grey[400],
                  )),
                  const Text("Or continue with"),
                  Expanded(
                      child: Divider(
                    thickness: 0.7,
                    color: Colors.grey[400],
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Google
                  SquareTile(
                      ImagePath: 'images/googlepng-removebg-preview.png'),
                  SizedBox(
                    width: 15,
                  ),
                  SquareTile(
                      ImagePath: 'images/facebookpng-removebg-preview.png')
                ],
              ),
              _errorMessage(),
            ],

          ),
        ),
      ),
    );
  }
}
