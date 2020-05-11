import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget grid(List<MaterialColor> items) {
  return GridView.builder(
    itemCount: items.length * 2,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) {
      return Card(
        child: Material(
          elevation: 8.0,
          shadowColor: Colors.green,
//          shape: CircleBorder(side: BorderSide(width: 5.0)),
//          shape: CircleBorder(side: BorderSide(width: 5.0, style: BorderStyle.none)),
          color: items[index % (items.length)],
          child: InkWell(
            onTap: () => Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Item $index clicked!"),
                duration: Duration(milliseconds: 1000),
              ),
            ),
          ),
        ),
      );
    },
  );
}
