import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/data.dart';
import 'package:spotify_clone/widgets/homescreen/homescreen_appbar.dart';
import 'package:spotify_clone/widgets/homescreen/popular_list_widget.dart';
import 'package:spotify_clone/widgets/homescreen/recently_played.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeScreenAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const RecentlyPlayed(),
                PopularListWidget(
                  listTitle: "Popular artists",
                  listName: artistsImages[1],
                  listPhoto: artistsImages[0],
                ),
                PopularListWidget(
                  listTitle: "Popular albums",
                  listName: artistsImages[1],
                  listPhoto: albums,
                ),
                PopularListWidget(
                  listTitle: "Popular radio",
                  listName: artistsImages[1],
                  listPhoto: albums,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
