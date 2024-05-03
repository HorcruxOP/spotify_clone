import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SongsList extends StatefulWidget {
  const SongsList({super.key});

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("Songs").snapshots(),
          builder: (context, songsSnapshot) {
            if (songsSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              final songsDocs = songsSnapshot.data!.docs;
              return ListView.builder(
                itemCount: songsDocs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(songsDocs[index]['name']),
                      subtitle: Text(songsDocs[index]['artist']),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
