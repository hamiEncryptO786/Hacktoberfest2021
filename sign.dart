import 'package:cosy_coffee_app/forgot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'forgot.dart';
import 'home.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('SIGN IN'),
          centerTitle: true,
          backgroundColor: Colors.brown.shade300,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.brown.shade300,
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 130, right: 130)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Forgot()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
