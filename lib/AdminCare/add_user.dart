import 'package:flutter/material.dart';
import 'package:digital_clinic_final/AdminCare/firestore.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  // Firestore service
  final FirestoreService firestoreService = FirestoreService();

  // Text controllers
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  // Open dialog box
  void openUserBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
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
            onPressed: () {
              firestoreService.addUser(
                titleController.text,
                descriptionController.text,
                locationController.text,
              ).then((_) {
                // Clear the text fields
                titleController.clear();
                descriptionController.clear();
                locationController.clear();

                // Close the dialog
                Navigator.pop(context);
              }).catchError((error) {
                print('Failed to add user: $error');
              });
            },
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
