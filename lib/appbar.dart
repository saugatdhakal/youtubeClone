import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assest/yt_logo_rgb_dark.png",
          fit: BoxFit.contain,
          height: 20,
        ),
      ],
    ),
    actions: [
      IconButton(
          icon: Icon(
            Feather.cast,
            color: Colors.white,
          ),
          onPressed: () {}),
      IconButton(
          icon: Icon(
            MaterialIcons.videocam,
            color: Colors.white,
          ),
          onPressed: () {}),
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {}),
      Container(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/1816606/pexels-photo-1816606.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
            fit: BoxFit.cover,
            width: 49,
          ),
        ),
      ),
    ],
  );
}
