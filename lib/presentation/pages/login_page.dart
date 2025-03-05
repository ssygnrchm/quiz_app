import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/pages/main_page.dart';
import 'package:quiz_app/presentation/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        // height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // sizedBox(height: MediaQuery.sizeOf(context).height / 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/circle_logo.png")],
            ),
            // sizedBox(height: MediaQuery.sizeOf(context).height / 7),
            Column(
              spacing: 10,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text(
                    "Enter your name",
                    fsize: 18,
                    fweight: FontWeight.w600,
                  ),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // White border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // White border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter text',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            // sizedBox(height: MediaQuery.sizeOf(context).height / 5),
            CustomButton(
              title: "Start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox({double? height, double? width}) {
    return SizedBox(height: height, width: width);
  }

  Text text(
    String string, {
    double fsize = 18,
    FontWeight fweight = FontWeight.normal,
    Color fcolor = Colors.white,
  }) {
    return Text(
      string,
      style: TextStyle(fontSize: fsize, fontWeight: fweight, color: fcolor),
    );
  }
}
