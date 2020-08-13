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
import 'icon_cardlar/drawercard.dart';

class BasSahypa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TÜRKMENÇE SAPAKLAR'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.web,
                color: Colors.white,
              ),
              onPressed: () {
                weblink('https://www.linkedin.com/in/myratnesirov/');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 70.0,
                child: DrawerHeader(
                    child: Center(
                      child: Text('TÜRKMENÇE SAPAKLAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero),
              ),
              SizedBox(
                height: 10,
              ),
              DrawerCard(
                text: 'MATEMATIKA TM',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCo4b6ncttVk1J0-5X-Lp7Zw');
                },
              ),
              DrawerCard(
                text: 'FIZIKA TM',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCZSrfUamsRSrYbR9U4_sPmg');
                },
              ),
              DrawerCard(
                text: 'SAT MATEMATIKA',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCo3mVJ5DxDKlVmaDwpmHYJA');
                },
              ),
              DrawerCard(
                text: 'AutoCAD',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UC0ePlfIs7t4svN_5zKFwnaw');
                },
              ),
              DrawerCard(
                text: 'C++',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UC5e962XSJo7JS-HokSzOkTg');
                },
              ),
              DrawerCard(
                text: 'DART',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCe58C1xwEk4o6wm260TwLDw');
                },
              ),
              DrawerCard(
                text: 'IŇLIS DILI 1',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCCgQSMuozXSTqHFik8m7D0g');
                },
              ),
              DrawerCard(
                text: 'IŇLIS DILI 2',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCSrO5ndT_nutHxfc8C2NNMg');
                },
              ),
              DrawerCard(
                text: 'IŇLIS DILI 3',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UC9KkqL-bEAbG5E6iMZRuP2g');
                },
              ),
              DrawerCard(
                text: 'WEB SAPAKLARY',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UC1hyBGXto1npgpapPtqp0Bw');
                },
              ),
              DrawerCard(
                text: 'ONLINE SAPAK',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCGpKc11oLNSeZCfD8SGrJtA');
                },
              ),
              DrawerCard(
                text: 'PASCAL ABC',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCF5PwdpS1UFwSrOMyRVebFw');
                },
              ),
              DrawerCard(
                text: 'MATH ZEHIN',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCHcHqf-sufe3vi-cgvxtoJA');
                },
              ),
              DrawerCard(
                text: 'PYVISION',
                onTap: () {
                  weblink(
                      'https://www.youtube.com/channel/UCJK4lWXTBYJ8JVBRGU8tDjQ');
                },
              ),
            ],
          ),
        ),
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
                        weblink('https://instagram.com/turkmencepython');
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
                        weblink('https://medium.com/@myratnesirov');
                      },
                      icon: FontAwesomeIcons.medium,
                      color: Colors.white,
                    ),
                    ButtomIcon(
                      onPress: () {
                        weblink('https://github.com/myratnesirov');
                      },
                      icon: FontAwesomeIcons.github,
                      color: Colors.white,
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
