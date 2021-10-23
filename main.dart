import 'package:cosy_coffee_app/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'sign.dart';

void main() => runApp(MaterialApp(home: CosyCoffee()));

class CosyCoffee extends StatefulWidget {
  const CosyCoffee({Key? key}) : super(key: key);

  @override
  _CosyCoffeeState createState() => _CosyCoffeeState();
}

class _CosyCoffeeState extends State<CosyCoffee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.jpg',),
                // colorFilter: ColorFilter.mode(Colors.blue.shade200,BlendMode.darken),
                fit: BoxFit.cover,)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'Welcome to Cossy Coffee',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            );
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.brown.shade300,
                              padding: EdgeInsets.only(
                                  top: 20, bottom: 20, left: 65, right: 65)),
                        ),),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey.shade600,
                            padding: EdgeInsets.only(
                                top: 20, bottom: 20, left: 65, right: 65)),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
