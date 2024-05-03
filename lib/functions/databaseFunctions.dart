import 'package:cloud_firestore/cloud_firestore.dart';

create(String collName, docName, name, artist, int age) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).set({
    "name": name,
    "artist": artist,
    "age": age,
  });
  print("DB updated ");
}

update(String collName, docName, field, var newFieldValue) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({field: newFieldValue});

  print("Fields updated");
}

delete(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
  print("Document deleted");
}
