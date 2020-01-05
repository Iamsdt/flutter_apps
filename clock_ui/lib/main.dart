import 'package:flutter/material.dart';
import 'bottom_bar.dart';
import 'first_tab.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color(0xffff0863), width: 4.0),
                            insets: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0)),
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: <Widget>[
                          Tab(
                            text: "ALARMS",
                            icon: Icon(Icons.alarm, size: 40),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(Icons.menu, size: 40),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: FirstTab(),
              ),
              Center()
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
