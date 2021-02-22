import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/body_text.dart';
import 'package:my_portifolio/left_menu.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          LeftMenu(),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 1000,
              color: Colors.transparent,
              //flex: 4,
              child: BackgroundBubble(
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
                                  content:
                                      const Text('A SnackBar has been shown.'),
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
        ],
      ),
    );
  }
}
