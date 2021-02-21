import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';
import 'package:my_portifolio/widgets/shake.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _enabled = false;
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  Future<void> playAudio() async {
    await Future.delayed(
      const Duration(milliseconds: 100),
      () {
        assetsAudioPlayer.open(
          Audio.network('assets/audio/starwars.mp3'),
        );
      },
    );
  }

  void startTimer() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      setState(() {
        _enabled = !_enabled;
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
            child: Container(
              width: 300,
              height: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ShakeAnimatedWidget(
                        enabled: _enabled,
                        duration: const Duration(milliseconds: 1500),
                        shakeAngle: Rotation.deg(z: 50),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _enabled = !_enabled;
                              startTimer();
                              //playAudio();
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: 200,
                            height: 200,
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/54176892?s=460&u=4b0b4625a64dec5178064bb8ce62f95ea89d664e&v=4',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ShakeWidget(
                        duration: const Duration(seconds: 2),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'HOME',
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ShakeWidget(
                        duration: const Duration(seconds: 2),
                        child: TextButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text(
                            'ABOUT',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      const SizedBox(
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
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Column(
                      children: const [
                        Text(
                          'Lucas Gonçalves!',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'stjedise',
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Estudante de Ciências da Computação - 5/8',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'stjedise',
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const BackgroundBubble(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
