import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 300,
                height: double.infinity,
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Container(
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
                  ],
                ),
              ),
            ],
          ),
          BackgroundBubble(),
        ],
      ),
    );
  }
}
