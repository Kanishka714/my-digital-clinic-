import 'package:digital_clinic_final/AdminCare/firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  // Firestore service
  final FirestoreService firestoreService = FirestoreService();

  // Text controllers
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  // Open dialog box
  void openNoteBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              firestoreService.addNote(
                titleController.text,
                descriptionController.text,
              ).then((_) {
                // Clear the text fields
                titleController.clear();
                descriptionController.clear();

                // Close the dialog
                Navigator.pop(context);
              }).catchError((error) {
                print('Failed to add note: $error');
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
      appBar: AppBar(title: Text("Notes")),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: Icon(Icons.add),
      ),
    );
  }
}
