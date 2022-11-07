
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signup.dart';
import './forget.dart';
import './profile.dart';

class Login extends StatelessWidget{
  const Login({super.key});
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
                  child: Text("Login page",
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
                    Text("Password:"),
                    TextField(
                      obscureText: true,
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
                  child: Text("log in"),
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
                          MaterialPageRoute(builder: (context) => Forget()),
                        );
                      },
                      child: Text("forget password",
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