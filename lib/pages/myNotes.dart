import 'package:flutter/material.dart';
import 'package:note_it/pages/addNotes.dart';

class MyNotesPage extends StatefulWidget {
  const MyNotesPage({super.key});

  @override
  State<MyNotesPage> createState() => _MyNotesPageState();
}

class _MyNotesPageState extends State<MyNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddNotes( )));
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.add,color: Colors.black,),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text('My Notes',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );
  }
}