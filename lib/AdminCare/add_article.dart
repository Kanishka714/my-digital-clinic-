import 'package:digital_clinic_final/AdminCare/firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class AddArticle extends StatefulWidget {
  const AddArticle({super.key});

  @override
  _AddArticleState createState() => _AddArticleState();
}

class _AddArticleState extends State<AddArticle> {
  final FirestoreService firestoreService = FirestoreService();

  final TextEditingController articleTitleController = TextEditingController();
  final TextEditingController articleDescriptionController = TextEditingController();

  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<String?> _uploadImage(File image) async {
    try {
      final storageRef = FirebaseStorage.instance.ref().child('article_images/${DateTime.now().millisecondsSinceEpoch}');
      final uploadTask = storageRef.putFile(image);
      final snapshot = await uploadTask;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      print('Failed to upload image: $e');
      return null;
    }
  }

  Future<void> _submitArticle() async {
    final title = articleTitleController.text;
    final description = articleDescriptionController.text;
    if (title.isEmpty || description.isEmpty || _image == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill all fields and select an image.')));
      return;
    }

    final imageUrl = await _uploadImage(_image!);
    if (imageUrl == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image upload failed.')));
      return;
    }

    firestoreService.addArticle(title, description, imageUrl).then((_) {
      articleTitleController.clear();
      articleDescriptionController.clear();
      setState(() {
        _image = null;
      });
      Navigator.pop(context);
    }).catchError((error) {
      print('Failed to add article: $error');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to add article.')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Article'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey.shade200,
                child: _image != null
                    ? Image.file(
                  _image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
                    : Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: articleTitleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: articleDescriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitArticle,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
