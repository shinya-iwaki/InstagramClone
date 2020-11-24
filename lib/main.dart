import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/story.dart';
import 'package:flutter_instagram_clone/post.dart';
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
    "https://randomuser.me/api/portraits/men/1.jpg",
    "https://randomuser.me/api/portraits/men/2.jpg",
    "https://randomuser.me/api/portraits/men/3.jpg",
    "https://randomuser.me/api/portraits/men/4.jpg",
    "https://randomuser.me/api/portraits/men/5.jpg",
    "https://randomuser.me/api/portraits/men/6.jpg",
  ];

  // Posts DummyImageData
  List<String> imageUrl = [
    "https://pro-foto.jp/free/img/images_big/hnb0037-049.jpg",
    "https://pro-foto.jp/free/img/images_big/snw0025-033.jpg",
    "https://pro-foto.jp/free/img/images_big/yam0065-049.jpg",
    "https://pro-foto.jp/free/img/images_big/riv0017-009.jpg",
    "https://pro-foto.jp/free/img/images_big/riv0061-033.jpg",
    "https://pro-foto.jp/free/img/images_big/snw0017-009.jpg",
  ];

  // pubspec.yaml google fonts package


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, //mainの色呼び出し
      // AppBar
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Instagram Clone UI",
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding:
                const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Container(
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(userAvatar[0], "ソラ"),
                  storyButton(userAvatar[1], "リク"),
                  storyButton(userAvatar[2], "アクセル"),
                  storyButton(userAvatar[3], "ロクサス"),
                  storyButton(userAvatar[4], "アンセム"),
                  storyButton(userAvatar[5], "ゼムナス"),
                ],
              ),
            ),
            post(userAvatar[0], "ソラ", imageUrl[0]),
            post(userAvatar[1], "リク", imageUrl[1]),
            post(userAvatar[2], "アクセル", imageUrl[2]),
            post(userAvatar[3], "ロクサス", imageUrl[3]),
            post(userAvatar[4], "アンセム", imageUrl[4]),
            post(userAvatar[5], "ゼムナス", imageUrl[5]),
          ],
        ),
      ),

      // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
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
            title: Text("SEARCH"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.play_circle_outline
            ),
            title: Text("REELS"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.backpack_outlined
            ),
            title: Text("SHOP"),
          ),

          BottomNavigationBarItem(
            icon: Icon(
                Icons.person
            ),
            title: Text("PROFILE"),
          ),

        ],
      ),

    );
  }
}