import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:my_portifolio/home_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  Future<void> playAudio() async {
    setState(() async {
      await assetsAudioPlayer.open(
        Audio.file("assets/audio/starwars.mp3"),
      );
      await assetsAudioPlayer.play();
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: HomeScreen(),
      duration: 4000,
      text: "a long time ago in a galaxy far far away...",
      textType: TextType.ScaleAnimatedText,
      textStyle: const TextStyle(
        fontSize: 40.0,
        color: Colors.yellow,
      ),
      backgroundColor: Colors.black,
    );
  }
}
