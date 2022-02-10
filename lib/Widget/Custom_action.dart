import 'dart:html';

import 'package:flutter/material.dart';

class Customaction extends StatelessWidget {
  final String title;
  final bool hasBackarrow;
  final bool hasTitle;

  const Customaction(
      {Key key,
       this.title,
      this.hasBackarrow,
       this.hasTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (hasBackarrow)
            Container(
              child: Icon(Icons.backspace),
            ),
          if (hasTitle)
            Text(
              title ?? 'Bar',
              style: TextStyle(fontSize: 20),
            ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text(
              '0',
              style: TextStyle(fontSize: 20),
            ),
            )
          )
        ],
      ),
    );
  }
}
