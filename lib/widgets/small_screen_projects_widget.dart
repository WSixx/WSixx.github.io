import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallScreenProjectsWidget extends StatelessWidget {
  final String imageAsset;
  final String prjTitle;
  final String prjDescription;
  final String prjgitLink;
  const SmallScreenProjectsWidget(
      {this.imageAsset, this.prjTitle, this.prjDescription, this.prjgitLink});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Card(
              child: Image.asset(
                imageAsset,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: ListTile(
              title: Container(
                child: Text(
                  prjTitle,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      prjDescription,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      softWrap: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () async {
                          await launch(prjgitLink);
                        },
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.aspectRatio * 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
