import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:kitsune/screens/home/widgets/bottom_games.dart';
import 'package:kitsune/screens/home/widgets/games_caroulsel.dart';
import 'package:kitsune/screens/home/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Color(0xFFf3f4f6),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        // containerHeight: 70,
        onItemSelected: (value) => setState(() {
          _currentIndex = value;
        }),
        selectedIndex: _currentIndex,
        showElevation: false,
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.apps,
              color: Colors.grey[600],
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            activeColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.grey[600],
            ),
            title: Text('Users',
                style: TextStyle(
                  color: Colors.grey[800],
                )),
            activeColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey[600],
            ),
            title: Text('Messages',
                style: TextStyle(
                  color: Colors.grey[800],
                )),
            activeColor: Colors.grey,
            // activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.add_alert,
              color: Colors.grey[600],
            ),
            title: Text('Settings',
                style: TextStyle(
                  color: Colors.grey[800],
                )),
            activeColor: Colors.grey,

            // activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey[600],
            ),
            title: Text('Settings',
                style: TextStyle(
                  color: Colors.grey[800],
                )),
            activeColor: Colors.grey,

            // activeColor: Colors.blue,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Header(),
          GamesCaroulsel(),
          BottomGames(),
        ],
      ),
    );
  }
}
