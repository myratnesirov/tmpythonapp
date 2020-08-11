import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'icon_cardlar/card_file.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_cardlar/title_icon.dart';
import 'icon_cardlar/title_card.dart';
import 'icon_cardlar/icons.dart';
import 'icon_cardlar/buttom_icons.dart';
import 'social_media_links.dart';

class BasSahypa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: TitleCard(
//              colour: Colors.black,
                cardChild: TitleIcon(
                  icon: FontAwesomeIcons.python,
                  color: Colors.indigo,
                  label: 'TÜRKMENÇE PYTHON\nONLINE KURS',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(
                onPress: () {
                  Navigator.pushNamed(context, '/videolar');
                },
                colour: Colors.white,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.youtube,
                  color: Colors.red,
                  label: 'VIDEO SAPAKLAR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(
                onPress: () {
                  Navigator.pushNamed(context, '/codeyazgylary');
                },
                colour: Colors.white,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.code,
                  color: Colors.red,
                  label: 'CODE ÝAZGYLARY',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtomIcon(
                      onPress: () {
                        instagram();
                      },
                      icon: FontAwesomeIcons.instagram,
                      color: Colors.red,
                    ),
                    ButtomIcon(
                      onPress: () {
                        launch(email.toString());
                      },
                      icon: FontAwesomeIcons.mailBulk,
                      color: Colors.orange,
                    ),
                    ButtomIcon(
                      onPress: () {
                        medium();
                      },
                      icon: FontAwesomeIcons.medium,
                      color: Colors.white,
                    ),
                    ButtomIcon(
                      onPress: () {
                        twitter();
                      },
                      icon: FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
