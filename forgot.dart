import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Forgot extends StatelessWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("FORGOT PASSWORD"),
        centerTitle: true,
        backgroundColor: Colors.brown.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "VERIFY EMAIL",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.brown.shade300,
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 100,right: 100)
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
