import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';
import 'package:macromasterai/Screens/UserProfileDetails.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final aiChatInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    initMediaQuerySize(context);
    return Scaffold(
        backgroundColor: const Color(0xfff9f9f9),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Container(
            height: 20,
            width: 20,
            // color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(60)),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          title: const Text(
            "MacroMaster AI",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UserInfoDetails()), // Replace with your login screen widget
                );
              },
              child: Container(
                  height: 40,
                  width: 40,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Image.asset('images/avatar-removebg-preview.png')),
            ),
            Container(
              height: 40,
              width: 40,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(60)),
              child: IconButton(
                icon: const Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ChatBot()));
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: widgetHeight(676)),
            child: Column(
              children: [
                TextField(
                  controller: aiChatInputController,
                  obscureText: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_circle_up_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      hintText: 'Ask me anything',
                      fillColor: Colors.white,
                      filled: true),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
