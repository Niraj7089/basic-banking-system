import 'package:flutter/material.dart';
import 'package:sush_bank/main.dart';
import 'package:sush_bank/send_money_flow/select_account_page.dart';

class Harshad extends StatefulWidget {
  const Harshad({Key key}) : super(key: key);

  @override
  _HarshadState createState() => _HarshadState();
}

class _HarshadState extends State<Harshad> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.blue.shade100,
      child: Column(
        children: [
          Container(
            
            color: Colors.blue.shade700,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.2,
                    left: 15,
                  ),
                ),
                Icon(
                  Icons.account_circle_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Niraj Dhiwar",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 25,
            height: 25,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Image.asset('images/niraj.png'),
                  ),
                  color: Colors.amber,
                ),
              ]),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  // left: 0,
                  top: height * 0.1,
                ),
                child: Material(
                  color: const Color(0xFF40D876),
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectAccountPage()));
                    },
                    child: Container(
                      width: width * 0.5,
                      height: 70,
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text("Send Money",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  // left: 0,
                  top: height * 0.1,
                ),
                child: Material(
                  color: const Color(0xFF40D876),
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage2()));
                    },
                    child: Container(
                      width: width * 0.5,
                      height: 70,
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text("Transfer History",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
