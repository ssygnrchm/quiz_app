import 'package:flutter/material.dart';
import 'package:quiz_app/data/datasource/local/pref_handler.dart';
import 'package:quiz_app/presentation/pages/intro_page.dart';
import 'package:quiz_app/presentation/pages/login_page.dart';
import 'package:quiz_app/presentation/pages/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataUser();
  }

  void getDataUser() async {
    var userId = await PrefHandler.getId();
    var userStatus = await PrefHandler.getStatus();
    print(userId);
    print(userStatus);
    Future.delayed(Duration(seconds: 2), () {
      if (userId != '') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      } else if (userStatus == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else if (userStatus == false) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => IntroPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/circle_logo.png',
          height: MediaQuery.sizeOf(context).width * 0.5,
          width: MediaQuery.sizeOf(context).height * 0.5,
        ),
      ),
    );
  }
}
