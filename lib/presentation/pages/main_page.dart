import 'dart:async';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isSelected = false;
  // bool _showCircle = true;

  Timer? timer;
  static const maxSecond = 30;
  int second = maxSecond;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (second == 0) {
          setState(() {
            timer.cancel();
            // _showCircle = !_showCircle;
          });
        } else {
          setState(() {
            second--;
          });
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 30))
          ..addListener(() {
            setState(() {});
          })
          ..repeat();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Icon(Icons.arrow_back_ios, size: 11.15),
                            ),
                            text(
                              'Previous',
                              fsize: 12,
                              fweight: FontWeight.w600,
                              fcolor: const Color.fromARGB(255, 0, 70, 67),
                            ),
                          ],
                        ),
                      ),
                    ),
                    text(
                      "7/10",
                      fsize: 18,
                      fcolor: Colors.black,
                      fweight: FontWeight.w600,
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
                sizedBox(height: MediaQuery.sizeOf(context).height / 28),
                Stack(
                  children: [
                    Column(
                      children: [
                        sizedBox(
                          height: MediaQuery.sizeOf(context).height / 16,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.sizeOf(context).height / 4.5,
                              minWidth: MediaQuery.sizeOf(context).width,
                            ),
                            child: Center(
                              child: text(
                                'Tahun berapa saat ini?',
                                fcolor: Colors.black,
                                fweight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 86,
                        width: 86,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(child: Text(second.toString())),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircularProgressIndicator(
                        value: controller.value,
                        strokeWidth: 10,
                        strokeCap: StrokeCap.round,
                        backgroundColor: const Color.fromARGB(
                          255,
                          171,
                          209,
                          198,
                        ),
                        constraints: BoxConstraints(
                          minHeight: 86,
                          minWidth: 86,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: CheckboxListTile(
                          value: isSelected,
                          checkboxShape: CircleBorder(),
                          onChanged: (bool? value) {
                            setState(() {
                              isSelected = value!;
                            });
                          },
                          title: text(
                            '2000',
                            fcolor: Colors.black,
                            fweight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
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

  SizedBox sizedBox({double? height, double? width}) {
    return SizedBox(height: height, width: width);
  }
}
