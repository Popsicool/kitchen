
import 'package:flutter/material.dart';

import './signup.dart';
import './login.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 40,),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text("Sign up",
                        style: TextStyle(
                            color: Colors.black26
                        )),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), //

                    ),

                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text("Login",
                        style: TextStyle(
                            color: Colors.blue
                        )),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.red//

                    ),

                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 10.0),
              child: Image.asset("images/img1.jfif"
              ),
            ),
            Center(
              child: Container(
                margin:EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [

                    Text("Esther kitchen",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue, fontFamily: 'Raleway',),
                    ),
                    Text("the home of all delicacies",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        color: Colors.black26, fontFamily: 'Raleway',),)
                  ],
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}