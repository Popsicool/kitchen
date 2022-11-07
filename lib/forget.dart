
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signup.dart';
import './login.dart';
import './profile.dart';

class Forget extends StatelessWidget{
  const Forget({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Esther Kitchen"),
          backgroundColor: Colors.grey,),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom:30),
                    child: Text("Reset password",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey, fontFamily: 'Raleway',
                      ),),
                  )
              ),
              Container(
                child: Column(
                  children: [
                    Text("Email address"),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10),
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: Text("Reset password"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left:50, top:50),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text("Create an account",
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
                      child: Text("login to an account",
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
            ],
          ),
        )
    );
  }
}