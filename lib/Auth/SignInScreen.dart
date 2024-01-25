import 'package:flutter/material.dart';
import 'package:macromasterai/CommonScreen.dart';
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CommonScreenSelector()));
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
