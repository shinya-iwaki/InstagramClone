import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //DebugBar削除
      home: InstagramClone(),
    );
  }
}

//stfu
class InstagramClone extends StatefulWidget {
  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}
class _InstagramCloneState extends State<InstagramClone> {
  Color mainColor = Colors.blueGrey[50];

  // DummyAvatarData
  List<String> userAvatar = [
    "https://randomuser.me/api/portraits/men/45.jpg",
    "https://randomuser.me/api/portraits/men/46.jpg",
    "https://randomuser.me/api/portraits/men/47.jpg",
    "https://randomuser.me/api/portraits/men/48.jpg",
    "https://randomuser.me/api/portraits/men/49.jpg",
    "https://randomuser.me/api/portraits/men/50.jpg",
  ];

  // Posts DummyImageData
  List<String> imageUrl = [

  ];

  // pubspec.yaml google fonts package


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, //mainの色呼び出し
      // AppBar
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Instagram",
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.photo_camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
          ),
        ],
      ),

      // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        items: [

          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            title: Text("HOME"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.search
            ),
            title: Text("HOME"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.home
            ),
            title: Text("HOME"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.home
            ),
            title: Text("HOME"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.home
            ),
            title: Text("HOME"),
          ),

        ],
      ),

    );
  }
}