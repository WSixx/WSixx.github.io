import 'dart:async';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/body_text.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';
import 'package:my_portifolio/widgets/shake.dart';
import 'package:simple_animations/simple_animations.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
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
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              backgroundImage: CachedNetworkImageProvider(
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
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 1000,
              color: Colors.transparent,
              //flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  //color: Color(0xff03016e),
                  color: Colors.black87,
                  backgroundBlendMode: BlendMode.plus,
                ),
                child: PlasmaRenderer(
                  type: PlasmaType.bubbles,
                  particles: 100,
                  color: const Color(0x44fbf6f6),
                  blur: 0.3,
                  size: 0.02,
                  speed: 0.39,
                  offset: 0.25,
                  blendMode: BlendMode.plus,
                  variation1: 0.9,
                  variation2: 0.07,
                  variation3: 0.44,
                  rotation: -0.25,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: BodyText(),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: SizedBox(
                                key: UniqueKey(),
                                height: 200.0,
                                width: 350.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/moto.jpg',
                                    ),
                                    Image.asset(
                                      'assets/images/moto.jpg',
                                    ),
                                    Image.asset(
                                      'assets/images/moto.jpg',
                                    ),
                                  ],
                                  dotSize: 4.0,
                                  dotSpacing: 15.0,
                                  dotColor: Colors.lightGreenAccent,
                                  indicatorBgPadding: 5.0,
                                  dotBgColor: Colors.blue.withOpacity(0.5),
                                  borderRadius: true,
                                ),
                              ),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'A SnackBar has been shown.'),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 200.0,
                              width: 350.0,
                              child: Carousel(
                                images: [
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                ],
                                dotSize: 4.0,
                                dotSpacing: 15.0,
                                dotColor: Colors.lightGreenAccent,
                                indicatorBgPadding: 5.0,
                                dotBgColor: Colors.blue.withOpacity(0.5),
                                borderRadius: true,
                              ),
                            ),
                            SizedBox(
                              height: 200.0,
                              width: 350.0,
                              child: Carousel(
                                images: [
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                  Image.asset(
                                    'assets/images/moto.jpg',
                                  ),
                                  ExactAssetImage('assets/images/moto.jpg'),
                                ],
                                dotSize: 4.0,
                                dotSpacing: 15.0,
                                dotColor: Colors.lightGreenAccent,
                                indicatorBgPadding: 5.0,
                                dotBgColor: Colors.blue.withOpacity(0.5),
                                borderRadius: false,
                                moveIndicatorFromBottom: 180.0,
                                noRadiusForIndicator: true,
                                overlayShadow: true,
                                overlayShadowColors: Colors.white,
                                overlayShadowSize: 0.7,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.network(
                                  'http://via.placeholder.com/350x150'),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/moto.jpg',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
