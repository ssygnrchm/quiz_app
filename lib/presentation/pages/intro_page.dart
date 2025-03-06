import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz_app/data/datasource/local/pref_handler.dart';
import 'package:quiz_app/presentation/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: true,
      done: Text("done"),
      onDone: () {
        PrefHandler.saveStatus(true);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      key: _introKey,
      pages: [
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.network(
              "https://example.com/image.png",
              height: 175.0,
            ),
          ),
          decoration: const PageDecoration(pageColor: Colors.blue),
        ),
        PageViewModel(
          title: 'Page two',
          bodyWidget: const Text('that\'s all folks'),
        ),
        PageViewModel(
          title: "Title of orange text and bold page",
          body:
              "This is a description on a page with an orange title and bold, big body.",
          image: const Center(
            child: Text("👋", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
      showNextButton: false,
      showBackButton: false,
    );
  }
}
