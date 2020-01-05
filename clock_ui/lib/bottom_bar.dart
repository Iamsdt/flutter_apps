import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "EDIT ALARMS",
              style: TextStyle(letterSpacing: 1.5),
            ),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text(
              "+",
              style: TextStyle(
                  color: Color(0xff253165),
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
          )
        ],
      ),
    );
  }
}
