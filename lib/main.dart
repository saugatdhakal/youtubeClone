import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:youtube_clone/HomeTab.dart';
import 'package:youtube_clone/appbar.dart';
import 'package:youtube_clone/vidoModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Youtube Clone",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List tab = [
    HomeTab(),
    HomeTab(),
    HomeTab(),
    HomeTab(),
    HomeTab(),
  ];
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: tab[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Entypo.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.md_compass), title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Icon(Entypo.folder_video), title: Text("Subscrptions")),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.md_notifications),
              title: Text("Notification")),
          BottomNavigationBarItem(
              icon: Icon(MaterialIcons.video_library), title: Text("Library")),
        ],
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
