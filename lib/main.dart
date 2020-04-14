import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:TiagoDias/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.restoreSystemUIOverlays();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(bodyText1: TextStyle(color: textMainColor))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ShadowButton(icon: Icons.arrow_back),
                ShadowButton(icon: Icons.menu),
              ],
            ),
            AvatarImage(),
            SizedBox(height: 15),
            Text(
              'Tiago Dias',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Leiria, Portugal',
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Senior Software Developer',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShadowButton(icon: FontAwesomeIcons.linkedin),
                SizedBox(width: 25),
                ShadowButton(icon: FontAwesomeIcons.twitter),
                SizedBox(width: 25),
                ShadowButton(icon: FontAwesomeIcons.github),
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                SocialBox(
                  icon: FontAwesomeIcons.dribbble,
                  count: '35',
                  category: 'shots',
                ),
                SizedBox(width: 15),
                SocialBox(
                  icon: FontAwesomeIcons.userAlt,
                  count: '1.2k',
                  category: 'followers',
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SocialBox(
                  icon: FontAwesomeIcons.heart,
                  count: '5.1k',
                  category: 'likes',
                ),
                SizedBox(width: 15),
                SocialBox(
                  icon: FontAwesomeIcons.user,
                  count: '485',
                  category: 'following',
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SocialBox(
                  icon: FontAwesomeIcons.glassWhiskey,
                  count: '97',
                  category: 'buckets',
                ),
                SizedBox(width: 15),
                SocialBox(
                  icon: FontAwesomeIcons.folderOpen,
                  count: '7',
                  category: 'projects',
                )
              ],
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  const SocialBox({this.icon, this.count, this.category});

  final IconData icon;
  final String count;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Container(
        padding: EdgeInsets.all(15),
        decoration: invertedBoxDecoration,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.pink.shade800, size: 20),
            SizedBox(width: 8),
            Text(count, style: TextStyle(fontWeight: FontWeight.w700)),
            SizedBox(width: 3),
            Text(category)
          ],
        ),
      )),
    );
  }
}

class ShadowButton extends StatelessWidget {
  const ShadowButton({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: boxDecoration,
      child: Icon(
        icon,
        color: textMainColor,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: boxDecoration,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('assets/profile.png')),
        ),
      ),
    );
  }
}
