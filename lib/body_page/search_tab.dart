
import 'package:flutter/material.dart';
import 'package:raselshop/Widget/Custom_action.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({ Key key }) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: Text('new home'),
          ),
          Customaction(
            hasBackarrow: true,
            hasTitle: true,
            title: 'Home',
          )
        ],
      ),
    );
  }
}