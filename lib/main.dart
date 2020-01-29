import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  _setTargetPlatformForDesktop();
  runApp(MyApp());
}

void _setTargetPlatformForDesktop() {
  // No need to handle macOS, as it has now been added to TargetPlatform.
  if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

// void main() {
//   runApp(new MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Business Card',
      theme: new ThemeData(
        primaryColor: const Color(0xFF388E3C),
        accentColor: const Color(0xFFFF4081),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  final fadeimage = FadeInImage.assetNetwork( placeholder: 'assets/palette.png',
//    image:
//'https://via.placeholder.com/150',
//    'https://media-exp1.licdn.com/dms/image/C4D03AQGOfrZyNI1xWw/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=ezwj6cfBYS1OX4Hk8q2AHn1MPO5Vca9QuwYBz_HD4-4',
//    fit: BoxFit.scaleDown,
//    imageScale: 0.5,
//    alignment: Alignment.center),
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Business Card'),
      ),
      body: new Container(
        color: Colors.green,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQGOfrZyNI1xWw/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=ezwj6cfBYS1OX4Hk8q2AHn1MPO5Vca9QuwYBz_HD4-4',
                ),
              ),
            ),
            Text(
              'Tommie N. Carter, Jr. MBA',
              style: GoogleFonts.lilyScriptOne(
                fontSize: 16,
//                fontWeight: FontWeight.bold,
//                fontStyle: FontStyle.n,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Software Engineer',
              style: GoogleFonts.aldrich(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 2.0,
                color: Colors.tealAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '1-212-555-1212',
                  style: GoogleFonts.sourceSansPro(fontSize: 14.0),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'not.myemail@email.com',
                    style: GoogleFonts.sourceSansPro(fontSize: 14.0),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            )
          ],
        ),
//        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
      ),
    );
  }
}
