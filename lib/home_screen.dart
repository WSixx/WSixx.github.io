import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';
import 'package:my_portifolio/widgets/shake.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _enabled = false;

  void startTimer() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _enabled = !_enabled;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 300,
              height: double.infinity,
              color: Colors.red,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ShakeAnimatedWidget(
                        enabled: _enabled,
                        duration: Duration(milliseconds: 1500),
                        shakeAngle: Rotation.deg(z: 50),
                        curve: Curves.linear,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _enabled = !_enabled;
                              startTimer();
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            width: 200,
                            height: 200,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/54176892?s=460&u=4b0b4625a64dec5178064bb8ce62f95ea89d664e&v=4',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ShakeWidget(
                        duration: Duration(seconds: 2),
                        child: TextButton(
                          child: Text(
                            'HOME',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'ABOUT',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: BackgroundBubble(),
          ),
        ],
      ),
    );
  }
}
