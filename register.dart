import 'package:cosy_coffee_app/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'sign.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('REGISTER'),
          centerTitle: true,
          backgroundColor: Colors.brown.shade300,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Phone No"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.brown.shade300,
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 120, right: 120)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
