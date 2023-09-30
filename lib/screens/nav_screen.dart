// ignore_for_file: unused_import, duplicate_ignore

import 'dart:html';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/screens/home_screen.dart';
// ignore: unused_import
import 'package:miniplayer/miniplayer.dart';

class navscreen extends StatefulWidget {
  const navscreen({Key? key}) : super(key: key);

  @override
  State<navscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<navscreen> {
  int _selectedindex= 0;

  final _screens = [
    HomeScreen(),
    const Scaffold(body: Center(child: Text('Explore'))),
    const Scaffold(body: Center(child: Text('Add'))),
    const Scaffold(body: Center(child: Text('Subscriptions'))),
    const Scaffold(body: Center(child: Text('Library'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens
          .asMap()
          .map((i, screen) => MapEntry(
            i,
             Offstage(offstage: _selectedindex != i,
              child: screen,
             ),
          ))
          .values
          .toList()
),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: (i) => setState(() => _selectedindex = i ),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          activeIcon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          activeIcon: Icon(Icons.add_circle),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          activeIcon: Icon(Icons.subscriptions),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_label_outlined),
          activeIcon: Icon(Icons.video_library),
          label: 'Library',
        ),
        ],
      ),
    ); 
  }
}

