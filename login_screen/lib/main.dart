import 'package:flutter/material.dart';
import 'package:login_screen/login_screen.dart';

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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (BuildContext ct) => MyHomePage(),
        "/login": (BuildContext ct) => Login(),
        "/signup": (BuildContext ct) => MyHomePage(),
      },
      initialRoute: "/home",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF4601E),
        child: InkWell(
          child: Center(
              child: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            textColor: Colors.white,
            size: 96.0,
          )),
          onTap: () {
            //go to second page
            Navigator.pushNamed(context, "/login");
          },
        ),
      ),
    );
  }
}
