import 'package:flutter/material.dart';

Widget loginScreen() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.android,
              color: Colors.green,
              size: 60,
            ),
            Icon(
              Icons.announcement,
              color: Colors.blueAccent,
              size: 60,
            )
          ],
        ),
        TextField(
          decoration: InputDecoration(
              alignLabelWithHint: true, labelText: "Email address"),
          keyboardType: TextInputType.emailAddress,
        ),
        TextField(
          decoration:
              InputDecoration(alignLabelWithHint: true, labelText: "Password"),
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("Login".toUpperCase()),
        )
      ],
    ),
//    ),
  );
}

/*Transform(
      transform: Matrix4.skewY(0.1),
      child: */
