import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection reference for users
  final CollectionReference users = FirebaseFirestore.instance.collection(
      'users');
  final CollectionReference article = FirebaseFirestore.instance.collection(
      'article');

  // User Create/Read
  Future<void> addUser(String name, String position, String location, String imageUrl) {
    return users.add({
      'name': name,
      'position': position,
      'location': location,
      'imageUrl': imageUrl,
      'timestamp': Timestamp.now(),
    });
  }

  // Read (get all users)
  Stream<QuerySnapshot> getUsers() {
    return users.orderBy('timestamp', descending: true).snapshots();
  }








  //Article Create/read
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

}