import 'package:flutter/material.dart';
import 'package:sush_bank/Users.dart';
import 'package:sush_bank/sql/customerview.dart';
import 'package:sush_bank/database.dart';
import 'package:sush_bank/screen/welcome_page.dart';
// import 'package:sush_bank/history/history_page.dart';
// import 'package:sush_bank/home/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new WelcomePage(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  List<Users> newusers;

  @override
  void initState() {
    // TODO: implement initState
    refreshList();
    super.initState();
  }

  refreshList() async {
    newusers = await DBProvider.db.getAllUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 5,
            ),
            Text(
              "Bank Accounts",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'TCM'),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FutureBuilder(
                    future: DBProvider.db.getAllUsers(),
                    builder: (context, AsyncSnapshot<List<Users>> snapshot) {
                      if (snapshot.hasData) {
                        print('project snapshot data is: ${snapshot.data}');
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              var project = snapshot.data[index];
                              return buildCard(context, project);
                            });
                      }
                      return CircularProgressIndicator();
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget buildCard(context, var snapshot) {
  final user = snapshot;
  return Container(
    child: Card(
      color: Colors.grey[100],
      elevation: 0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          showDialogBox(context, user.username, user.balance);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.username,
                        style: TextStyle(
                          fontFamily: 'heav',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        user.email,
                        style: TextStyle(fontFamily: 'mic', fontSize: 15),
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "₹ " + user.balance.toString(),
                  style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'luc',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

showDialogBox(context, username, balance) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20),
              height: 320,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FlutterLogo(
                        size: 50,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "GoBank",
                        style: TextStyle(fontSize: 30, fontFamily: 'heav'),
                      )
                    ],
                  ),
                  Text(
                    "Name: $username",
                    style: TextStyle(
                      fontFamily: 'TCM',
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Current Balance: ₹$balance",
                    style: TextStyle(fontFamily: 'TCM', fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerView(),
                              settings: RouteSettings(
                                  arguments: [username, balance])),
                        );
                      },
                      child: Text("Transfer"))
                ],
              ),
            ),
          ),
        );
      });
}
