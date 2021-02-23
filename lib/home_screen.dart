import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/body_text.dart';
import 'package:my_portifolio/left_menu.dart';
import 'package:my_portifolio/image_modal.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';
import 'dart:html' as html;

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

  void _openTransactionFormModal({
    BuildContext context,
    String print1,
    String print2,
    String print3,
    String print4,
    String linkGit,
  }) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return ImageModal(
            linkGit: linkGit,
            print1: print1,
            print2: print2,
            print3: print3,
            print4: print4,
          );
        });
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/meals/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print5.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print3.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print4.png',
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
                            ),
                            onTap: () {
                              _openTransactionFormModal(
                                context: context,
                                linkGit: 'https://github.com/WSixx/Meals-App',
                                print1: 'assets/images/meals/print1.png',
                                print2: 'assets/images/meals/print5.png',
                                print3: 'assets/images/meals/print3.png',
                                print4: 'assets/images/meals/print4.png',
                              );
                            },
                            onHover: (isHovering) {
                              if (isHovering) {
                              } else {
                                //The mouse is no longer hovering.
                              }
                            },
                          ),
                          InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/conews/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/conews/print2.png',
                                    ),
                                    Image.asset(
                                      'assets/images/conews/print3.png',
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
                            ),
                            onTap: () {
                              _openTransactionFormModal(
                                context: context,
                                linkGit:
                                    'https://github.com/WSixx/conews_flutter',
                                print1: 'assets/images/conews/print1.png',
                                print2: 'assets/images/conews/print2.png',
                                print3: 'assets/images/conews/print3.png',
                                print4: '',
                              );
                            },
                            onHover: (isHovering) {
                              if (isHovering) {
                              } else {
                                //The mouse is no longer hovering.
                              }
                            },
                          ),
                          GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/meals/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print5.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print3.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print4.png',
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
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/meals/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print5.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print3.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print4.png',
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
                          GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/meals/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print5.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print3.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print4.png',
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
                          GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                color: Colors.white12.withOpacity(0.5),
                                key: UniqueKey(),
                                height: 350.0,
                                width: 220.0,
                                child: Carousel(
                                  images: [
                                    Image.asset(
                                      'assets/images/meals/print1.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print5.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print3.png',
                                    ),
                                    Image.asset(
                                      'assets/images/meals/print4.png',
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
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Lucas Silva Gonçalves'),
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
