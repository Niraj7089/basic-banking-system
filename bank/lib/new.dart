import 'package:flutter/material.dart';



import 'main.dart';

class New extends StatefulWidget {
  const New({Key key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/banklogo.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.account_circle_rounded),
              Text("Harshad Hatte"),
            ],
          ),

          SizedBox(
            width: 80,
            height: 80,
          ),
          Column(children: <Widget>[
            Container(
              width: 550,
              height: 400,
              color: Colors.amber,
              child: Column(children: [
                Row(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 120,
                        height: 50,
                        color: Colors.amber,
                        padding: (const EdgeInsets.only(left: 10.0, top: 8)),
                        child: Text(
                          "NAME: ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        "Niraj Subhash Dhiwar: ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ]),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: 120,
                    height: 50,
                    color: Colors.amber,
                    child: Text(
                      "Email-id: ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    "nirajdhiwar.pune@gmail.com: ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(

                    // mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 120,
                        height: 50,
                        color: Colors.amber,
                        child: Text(
                          "Contact number: ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        "8669818605 ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ]),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 120,
                        height: 50,
                        color: Colors.amber,
                        child: Text(
                          "Balance: ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        "10000000 ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ]),
              ]),
            ),
          ]),

          //  Container(
          //     height: 80.0,
          //     width: 500,
          //     margin: EdgeInsets.only(top: 80),
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.stretch,
          //       children: <Widget>[
          //         Expanded(
          //           child: GestureDetector(
          //             onTapUp: (tapDetail) {
          //               Navigator.push(context, SelectAccountPageRoute());
          //             },
          //             child: Card(
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Row(
          //                   children:
          //                     [Container(
          //                       child: Row(
          //                         children: <Widget>[
          //                           Image.asset('images/ico_send_money.png'),
          //                           Padding(
          //                             padding:
          //                                 const EdgeInsets.symmetric(horizontal: 10.0),
          //                             child: Text(
          //                               'Send\nmoney',
          //                               style: TextStyle(fontWeight: FontWeight.w700),
          //                             ),
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                       SizedBox(
          //       width: 80,
          //       height: 150,
          //     ),
          //                     Container(
          //                        child: Row(

          //                         children: <Widget>[
          //                                                         Padding(padding: EdgeInsets.all(50),),

          //                           Image.asset('images/ico_send_money.png'),
          //                           Padding(
          //                             padding:
          //                                 const EdgeInsets.symmetric(horizontal: 25.0),
          //                             child: Text(
          //                               'History',
          //                               style: TextStyle(fontWeight: FontWeight.w700),
          //                             ),
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),

          //               ),
          //             ),
          //           ),
          //         ),

          //       ],
          //     ),
          //   ),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Row(
            children: [
              Container(
                child: Material(
                  color: const Color(0xFF40D876),
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage2()));
                    },
                    child: Container(
                      width: 400,
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
                      width: 400,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
