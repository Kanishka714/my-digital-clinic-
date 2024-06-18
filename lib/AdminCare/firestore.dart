import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection reference
  final CollectionReference notes = FirebaseFirestore.instance.collection('notes');

  // Create a new note with title and description
  Future<void> addNote(String title, String description) {
    return notes.add({
      'title': title,
      'description': description,
      'timestamp': Timestamp.now(),
    });
  }

  // Read (get all notes)
  Stream<QuerySnapshot> getNotes() {
    return notes.orderBy('timestamp', descending: true).snapshots();
  }

  // Update a note by document ID
  Future<void> updateNote(String docId, String title, String description) {
    return notes.doc(docId).update({
      'title': title,
      'description': description,
      'timestamp': Timestamp.now(),
    });
  }

  // Delete a note by document ID
  Future<void> deleteNote(String docId) {
    return notes.doc(docId).delete();
  }

  getDoctors() {}
}
