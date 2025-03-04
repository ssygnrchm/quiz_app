import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
            child: Row(
              children: [
                Expanded(child: Text("previous")),
                Text("7/10"),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
