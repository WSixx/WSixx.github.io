import 'package:animated_widgets/widgets/rotation_animated.dart';
import 'package:animated_widgets/widgets/shake_animated_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallScreenHome extends StatefulWidget {
  @override
  _SmallScreenHomeState createState() => _SmallScreenHomeState();
}

class _SmallScreenHomeState extends State<SmallScreenHome> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Lucas Gonçalves Portifolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/54176892?s=460&u=4b0b4625a64dec5178064bb8ce62f95ea89d664e&v=4',
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Lucas Silva Goncalves',
                textScaleFactor: 3,
                style: TextStyle(
                  fontFamily: 'stjedise',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 1,
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Hello, I am passionate about technology, currently studying the 5th semester of Computer Science, I am looking for an opportunity. '
                          'I like to learn and I am fascinated by new technologies, programming for me has become a hobby that I love to spend time.'
                          ' I like to read and watch a wide variety of films.',
                      style: Theme.of(context).textTheme.caption.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () async {
                      await launch(
                          'https://www.linkedin.com/in/lucassgon%C3%A7alves/');
                    },
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue[800],
                      size: MediaQuery.of(context).size.aspectRatio * 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () async {
                      await launch('https://github.com/WSixx');
                    },
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.aspectRatio * 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Tooltip(
                    message: 'Curriculo',
                    child: InkWell(
                      onTap: () async {
                        await launch(
                            'https://drive.google.com/drive/folders/1zdxe0cn_rP8UebGqyTpWqVsAcadwcdNZ?usp=sharing');
                      },
                      child: Icon(
                        FontAwesomeIcons.solidFileWord,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.aspectRatio * 80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          width: 700,
                          height: 350,
                          child: Image.asset(
                              'assets/images/meals/doublePrint.png'),
                        ),
                        Positioned(
                          bottom: 130,
                          right: 0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Meals APP',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 220,
                                color: Colors.black,
                                child: Text(
                                  'App developed in Flutter for navigation studies between multiple screens',
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                FontAwesomeIcons.github,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          width: 700,
                          height: 350,
                          child: Image.asset(
                              'assets/images/conews/doublePrint2.png'),
                        ),
                        Positioned(
                          bottom: 100,
                          right: 0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Covid-19 Data Cases ',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 300,
                                color: Colors.black,
                                child: Text(
                                  'You can see the data on COVID-19 updated daily. Data on recovered, infected and deaths. Data from more than 180 countries updated daily',
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                FontAwesomeIcons.github,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          width: 700,
                          height: 350,
                          child: Image.asset(
                              'assets/images/meals/doublePrint.png'),
                        ),
                        Positioned(
                          bottom: 130,
                          right: 0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Meals APP',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 220,
                                color: Colors.black,
                                child: Text(
                                  'Hello, I am passionate about technology, currently studying the 5th semester of Computer Science, I am looking for an opportunity. ',
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.github,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
