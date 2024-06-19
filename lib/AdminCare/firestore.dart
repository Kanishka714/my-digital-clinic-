import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection reference for users
  final CollectionReference users = FirebaseFirestore.instance.collection(
      'users');
  final CollectionReference article = FirebaseFirestore.instance.collection(
      'article');

  //final CollectionReference article = FirebaseFirestore.instance.collection('articles'); //


  // User Create/Read
  Future<void> addUser(String name, String postitioin, String imageUrl,
      String location) {
    return users.add({
      'name': name,
      'postitioin': postitioin,
      'imageUrl': imageUrl,
      'location': location,
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