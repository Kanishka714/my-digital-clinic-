import 'package:flutter/material.dart';
import 'package:digital_clinic_final/AdminCare/firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  // Firestore service
  final FirestoreService firestoreService = FirestoreService();

  // Text controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController postitioinController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  // Profile picture
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  // Function to upload image to Firebase Storage
  Future<String?> _uploadImage(File image) async {
    try {
      final storageRef = FirebaseStorage.instance.ref().child('profile_images/${DateTime.now().millisecondsSinceEpoch}');
      final uploadTask = storageRef.putFile(image);
      final snapshot = await uploadTask;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      print('Failed to upload image: $e');
      return null;
    }
  }

  // Function to add user to Firestore
  Future<void> _addUser() async {
    final name = nameController.text;
    final postitioin = postitioinController.text;
    final location = locationController.text;
    if (name.isEmpty || postitioin.isEmpty || location.isEmpty || _profileImage == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill all fields and select a profile picture.')));
      return;
    }

    final imageUrl = await _uploadImage(_profileImage!);
    if (imageUrl == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image upload failed.')));
      return;
    }

    firestoreService.addUser(name, postitioin, location, imageUrl).then((_) {
      nameController.clear();
      postitioinController.clear();
      locationController.clear();
      setState(() {
        _profileImage = null;
      });
      Navigator.pop(context);
    }).catchError((error) {
      print('Failed to add user: $error');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to add user.')));
    });
  }

  // Open dialog box
  void openUserBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: _profileImage != null ? FileImage(_profileImage!) : null,
                child: _profileImage == null ? Icon(Icons.add_a_photo, size: 40) : null,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: postitioinController,
              decoration: InputDecoration(
                labelText: 'Position',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Location',
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: _addUser,
            child: Text("Add"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add User")),
      floatingActionButton: FloatingActionButton(
        onPressed: openUserBox,
        child: Icon(Icons.add),
      ),
    );
  }
}