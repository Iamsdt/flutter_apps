import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFF4601E),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(),
                  elevation: 0.0,
                  color: Color(0xFFF4601E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlutterLogo(
                          size: 62.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 16.0, top: 0.0),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Card(
                  elevation: 4.0,
                  margin: EdgeInsets.only(left: 35.0, right: 35.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 28.0,
                          color: Colors.grey,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                hasFloatingPlaceholder: false,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  elevation: 4.0,
                  margin: EdgeInsets.only(left: 35.0, right: 35.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.lock,
                          size: 28.0,
                          color: Colors.grey,
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Password",
                                hasFloatingPlaceholder: false,
                              ),
                              keyboardType: TextInputType.text,
                              autocorrect: true,
                              obscureText: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        "Forget Password ?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Container(
                    height: 42.0,
                    width: 250.0,
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  color: Color(0xFFF4601E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have a account?",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
