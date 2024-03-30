import 'package:flutter/material.dart';
import 'package:note_it/pages/myNotes.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(child: Image.asset('assets/images/note_Illustration.png')),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'NOTE IT..!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'All your thoughts , one place',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MyNotesPage()), (route) => false);
              },
              child: Card(
                
                elevation: 20,
                color: Colors.white,
                child:  SizedBox(
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.5,
                  child: const Center(child: Text('Get Started',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
