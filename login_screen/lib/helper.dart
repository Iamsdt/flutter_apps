import 'package:flutter/material.dart';

Widget login(BuildContext context, String title) {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Container(height: 25, width: double.infinity, color: Color(0xFFF4601E)),
        Card(
          margin: EdgeInsets.only(),
          elevation: 0.0,
          color: Color(0xFFF4601E),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(100.0))),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.40,
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
                      padding: const EdgeInsets.only(right: 16.0, top: 0.0),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
