import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreMethods {
FirebaseAuth _auth = FirebaseAuth.instance  ;
FirebaseFirestore _firestore  =FirebaseFirestore.instance;

 Future <String> addNotes(
      String title, String description, String noteid, ) async{
    String res = 'some errror ooccured';
    try {
      await _firestore.collection('Users').doc(noteid).set({
        // 'uid':_auth.currentUser!.uid,
        'title':title,
        'description':description ,
        'noteid':noteid,
        'time':DateTime.now(),
      });
      res = 'success';

    } catch (err) {
res=err.toString();

    }
    return res;
  }
}
