// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:macromasterai/Auth/SignInScreen.dart';
import 'package:macromasterai/CommonScreen.dart';
import 'package:macromasterai/Constants/InputTextField.dart';
import 'package:macromasterai/Constants/SquareTiles.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = false;
  String userEmail = "";

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

  googleButtonClick() {
    signInWithGoogle().then((user) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CommonScreenSelector()));
    });
  }

  signInWithGoogle() async {
    //Sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth detail from user
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create credential for the user
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    //finally lets sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signInWithFacebook() async {
    try {
      final LoginResult loginResult =
          await FacebookAuth.instance.login(permissions: [
        'email',
      ]);

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      final userData = await FacebookAuth.instance.getUserData();

      userEmail = userData["email"];

      await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } on FirebaseAuthException catch (e) {
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
    }
  }

  facebookButtonClick() {
    signInWithFacebook().then((user) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CommonScreenSelector()));
    });
  }

  @override
  Widget build(BuildContext context) {
    initMediaQuerySize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widgetWidth(16), vertical: widgetHeight(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'MacroAi',
                child: SizedBox(
                  height: widgetHeight(270),
                  width: widgetWidth(270),
                  child: Image.asset('images/macromsaster.png.png'),
                ),
              ),
              SizedBox(
                height: widgetHeight(30),
              ),
              MyTextField(
                controller: emailController,
                labelText: "Gmail",
                obscureText: false,
                iconTextField: const Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: widgetHeight(20),
              ),
              MyTextField(
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                iconTextField: const Icon(Icons.fingerprint),
              ),
              SizedBox(
                height: widgetHeight(20),
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
              SizedBox(
                height: widgetHeight(15),
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
                      SizedBox(
                        width: widgetWidth(5),
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
              SizedBox(
                height: widgetHeight(60),
              ),
              GestureDetector(
                onTap: () {
                  loginTheUser();
                },
                child: Container(
                  height: widgetHeight(70),
                  width: widgetWidth(210),
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
              SizedBox(
                height: widgetHeight(60),
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
              SizedBox(
                height: widgetHeight(40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Google
                  SquareTile(
                    ImagePath: 'images/googlepng-removebg-preview.png',
                    onTap: () => googleButtonClick(),
                  ),
                  SizedBox(
                    width: widgetWidth(20),
                  ),
                  SquareTile(
                    ImagePath: 'images/facebookpng-removebg-preview.png',
                    onTap: () => facebookButtonClick(),
                  )
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
