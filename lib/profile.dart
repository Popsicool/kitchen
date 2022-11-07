
import 'package:flutter/material.dart';

import './signup.dart';
import './home.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Esther Kitchen"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 50.0),
              child: Column(
                children: [
                  Image.asset("images/img2.jfif",
                  height:150,
                  width: 220,),
                  Text("Serene Enviroment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey, fontFamily: 'Raleway',
                  ),),
                  Image.asset("images/img3.jfif",
                    height:150,
                    width: 250,),
                  Text("Lovers' hangout",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey, fontFamily: 'Raleway',
                    ),),
                  Image.asset("images/img4.jfif",
                    height:150,
                    width: 250,),
                  Text("Family gathering",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey, fontFamily: 'Raleway',
                    ),),
                ],
              ),
            ),


          ],

        ),
      ),
    );
  }
}