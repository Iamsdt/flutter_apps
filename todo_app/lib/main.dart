import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff262932),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "28 Feburary, 2019",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Thursday",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                        size: 48.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0XFFE5EFF5),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(55.0),)),
              padding: EdgeInsets.only(left:25.0, right: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 32.0,),
                  Text("REAMINING TASK", style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height:20.0),
                  getUnFinishedItem(false),
                  SizedBox(height:20.0),
                  getUnFinishedItem(false),
                  SizedBox(height: 32.0,),
                  Text("COMPLETED TASK", style: TextStyle(
                      fontSize: 22.0,
                      inherit: true,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height:20.0),
                  getUnFinishedItem(true),
                  SizedBox(height:20.0),
                  getUnFinishedItem(true),
                  SizedBox(height:20.0),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getUnFinishedItem(bool isFinished){

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0))),
      height: 100.0,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "This is a very very long title",
                    style: TextStyle(fontSize: 22.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "This is a sub title",
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
            ),
          ),
          isFinished ? Container():
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff6CCFF6),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: RotatedBox(
                quarterTurns: 1,
                child: Center(
                    child: Text(
                      "DONE",
                      style: TextStyle(fontSize: 16.0),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
