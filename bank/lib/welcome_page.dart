import 'package:flutter/material.dart';
import 'package:sush_bank/harshad.dart';

class WelcomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/banklogo.png'),
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome To Spark's Bank",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                Container(
                  height: 45,
                  width: 300,
                  child: RaisedButton(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Harshad()));
                    },
                    child: Text(
                      "Login Page",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Container(
                //   height: 45,
                //   width: 300,
                //   child: RaisedButton(
                //     color: Colors.deepOrangeAccent,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(30)),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           new MaterialPageRoute(
                //               builder: (context) => new HomePage()));
                //       //signup screen
                //     },
                //     child: Text(
                //       "Sign Up",
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                // ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
