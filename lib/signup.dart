
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});
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
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom:30),
                    child: Text("Registration page",
                      style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey, fontFamily: 'Raleway',
                      ),),
                  )
                ],
              ),
            ),
          ),
          Container(
          child: Column(
          children: [
            Text("Full name:"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
                keyboardType: TextInputType.text,
            ),
            Text("Email address: "),
            TextField(
            decoration: const InputDecoration(
          border: OutlineInputBorder(),
          ),
              keyboardType: TextInputType.emailAddress,
    ),
            Text("Referal code:"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text("Password:"),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            )
    ],
          ),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("Create account"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: StadiumBorder(),
                padding: EdgeInsets.all(10),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("login",
                style: TextStyle(
                  color: Colors.grey,
                )),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.white//<-- SEE HERE

              // padding: EdgeInsets.only(left:70, right:70, top:20, bottom: 20),
            ),

          ),
        ],
      ),
    )
    );
  }
}