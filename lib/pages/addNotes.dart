import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_it/methods/firestoreMethods.dart';
import 'package:uuid/uuid.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  FirebaseAuth _auth = FirebaseAuth.instance  ;
  TextEditingController titlecontroller = TextEditingController();
TextEditingController descriptioncontroller = TextEditingController();


@override
  void dispose() {
    super.dispose();
  titlecontroller.dispose();
  descriptioncontroller.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Note It',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: () {
            String  noteid=  Uuid().v1();
                FirestoreMethods().addNotes(titlecontroller.text, descriptioncontroller.text, noteid);
              },
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: titlecontroller,
                decoration: const InputDecoration(
                    hintText: 'Add title',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 27),
                    border: InputBorder.none),
              ),
              const SizedBox(height: 20,),
               TextField(
                controller: descriptioncontroller,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: 'Add description',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    border: InputBorder.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
