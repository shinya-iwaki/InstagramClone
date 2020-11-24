import 'package:flutter/material.dart';

Widget storyButton(String userImage, String userName) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12.0),
    child: Column(
      children: [
        Container(
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
        Text(userName, style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),)
      ],
    ),
  );
}