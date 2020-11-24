import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                border: Border.all(
                  color: Colors.pink,
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: NetworkImage(userImage),
                ),
              ),
            ),
            Text(userName),
            Expanded(
              child: IconButton(
                onPressed: () {},
                alignment: Alignment.centerRight,
                icon: Icon(
                  Icons.more_horiz,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(postPic),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_bubble_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.blueGrey[50],
                hintText: "コメントを追加",
                contentPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
              ),
            ),
            ),
          ],
        ),
      ],
    ),
    margin: EdgeInsets.only(bottom: 10.0),
    padding: EdgeInsets.all(10.0),
  );
}