import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection reference for users
  final CollectionReference users = FirebaseFirestore.instance.collection('users');
  final CollectionReference article = FirebaseFirestore.instance.collection('article');
  //final CollectionReference article = FirebaseFirestore.instance.collection('articles'); //

  //
  Future<void> addArticle(String title, String description, String imageUrl) {
    return article.add({
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'timestamp': Timestamp.now(),
    });
  }
  Stream<QuerySnapshot> getArticles() {
    return article.orderBy('timestamp', descending: true).snapshots();
  }

  // Add a new user
  Future<void> addUser(String title, String description, String location) {
    return users.add({
      'title': title,
      'description': description,
      'location': location,
      'timestamp': Timestamp.now(),
    });
  }

  // Read (get all users)
  Stream<QuerySnapshot> getUsers() {
    return users.orderBy('timestamp', descending: true).snapshots();
  }

  // Update a user by document ID
  Future<void> updateUser(String docId, String title, String description) {
    return users.doc(docId).update({
      'title': title,
      'description': description,
      'timestamp': Timestamp.now(),
    });
  }

  // Delete a user by document ID
  Future<void> deleteUser(String docId) {
    return users.doc(docId).delete();
  }
}
