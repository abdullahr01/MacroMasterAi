import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:macromasterai/Auth/LoginScreen.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/ProfileListTile.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';
import 'package:macromasterai/Screens/EditProfileScreen.dart';

class UserInfoDetails extends StatefulWidget {
  const UserInfoDetails({super.key});

  @override
  State<UserInfoDetails> createState() => _UserInfoDetailsState();
}

class _UserInfoDetailsState extends State<UserInfoDetails> {
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
            text: 'Profile',
            textSize: 18,
            textColor: Colors.black,
            isBold: true),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: widgetHeight(30)),
          child: Column(
            children: [
              Hero(
                tag: 'avatarHero',
                child: Container(
                  height: widgetHeight(160),
                  width: widgetWidth(160),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Image(
                    image: AssetImage('images/avatar-removebg-preview.png'),
                  ),
                ),
              ),
              SizedBox(
                height: widgetHeight(10),
              ),
              const PoppinsTextStyle(
                  text: 'Alex',
                  textSize: 20,
                  textColor: Colors.black,
                  isBold: true),
              const PoppinsTextStyle(
                  text: 'alex01@gmail.com',
                  textSize: 16,
                  textColor: Colors.black,
                  isBold: false),
              SizedBox(
                height: widgetHeight(30),
              ),
              GestureDetector(
                
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                },
                child: Container(
                  height: widgetHeight(70),
                  width: widgetWidth(210),
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
                height: widgetHeight(60),
              ),
              ProfileMenuButton(
                awesomeIcon: LineAwesomeIcons.cog,
                text: 'Settings',
                endIcon: true,
                textColor: Colors.black,
                onPress: () {},
              ),
              ProfileMenuButton(
                awesomeIcon: LineAwesomeIcons.wallet,
                text: 'Billing Details',
                endIcon: true,
                textColor: Colors.black,
                onPress: () {},
              ),
              SizedBox(
                height: widgetHeight(30),
              ),
              ProfileMenuButton(
                awesomeIcon: LineAwesomeIcons.info,
                text: 'Information',
                endIcon: true,
                textColor: Colors.black,
                onPress: () {},
              ),
              ProfileMenuButton(
                awesomeIcon: LineAwesomeIcons.alternate_sign_out,
                text: 'Logout',
                endIcon: false,
                textColor: Colors.red,
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
