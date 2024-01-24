import 'package:flutter/material.dart';
import 'package:macromasterai/Auth/SignInScreen.dart';
import 'package:macromasterai/CommonScreen.dart';
import 'package:macromasterai/Constants/InputTextField.dart';
import 'package:macromasterai/Constants/SquareTiles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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
                child: Container(
                  height: 170,
                  width: 170,
                  child: Image.asset('images/macromsaster.png.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: userNameController,
                labelText: "Gmail",
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignIn()));
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignIn()));
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignIn()));
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CommonScreenSelector()));
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
                      )
                  ),
                  const Text(
                      "Or continue with"
                  ),
                  Expanded(
                      child: Divider(
                        thickness: 0.7,
                        color: Colors.grey[400],
                      )
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Google
                  SquareTile(ImagePath: 'images/googlepng-removebg-preview.png'),
                  SizedBox(
                    width: 15,
                  ),
                  SquareTile(ImagePath: 'images/facebookpng-removebg-preview.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
