import 'package:flutter/material.dart';
import 'package:spotify_clone/functions/databaseFunctions.dart';
import 'package:spotify_clone/screens/songs.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  create("Songs", "fav songs1", "0 to 100", "smw", 30);
                },
                child: const Text("create"),
              ),
              ElevatedButton(
                onPressed: () {
                  update("Songs", "fav songs", "name", "295");
                },
                child: const Text("update"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SongsList(),
                      ));
                },
                child: const Text("retrieve"),
              ),
              ElevatedButton(
                onPressed: () {
                  delete("Songs", "fav songs");
                },
                child: const Text("delete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
