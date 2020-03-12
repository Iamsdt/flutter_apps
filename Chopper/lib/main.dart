import 'package:Chopper/api/MyChopper.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api/API.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => MyChopper().getApi(),
      lazy: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  int _counter = 0;
  String title = "Data is comming...";

  void _incrementCounter() async {
    try {
      Future res = MyChopper().getApi().getPosts();
      res.catchError((error) {
        print("Error, occourd $error");
      });
      var data = await res;

      _counter = 0;

      setState(() {
        _counter = 1;
        title = "$data";
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        _counter = -1;
        title = "No data";
      });
    }
  }

  dynamic process(Response response) {
    setState(() {
      _counter = 1;
      title = "$response";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await Provider.of<API>(context, listen: false).getPosts();
          //process(response.body);
          var list = response.bodyString;
          print(list);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
