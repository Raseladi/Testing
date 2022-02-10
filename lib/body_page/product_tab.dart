import 'package:flutter/material.dart';
import 'package:raselshop/Widget/Custom_action.dart';

class ProductTab extends StatefulWidget {
  const ProductTab({ Key key }) : super(key: key);

  @override
  _ProductTabState createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
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