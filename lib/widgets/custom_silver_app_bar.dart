import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assets/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          iconSize: 35.0,
          icon: CircleAvatar(
            backgroundImage: AssetImage('assets/channel_logo.png'),
            radius: 15.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
