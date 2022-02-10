import 'package:flutter/material.dart';
import 'package:raselshop/Widget/Custom_action.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newhome extends StatefulWidget {
  const newhome({Key key}) : super(key: key);

  @override
  _newhomeState createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  @override
  Widget build(BuildContext context) {
    final CollectionReference _productRef =
        FirebaseFirestore.instance.collection('Products');
    return Container(
      child: Stack(
        children: [
          FutureBuilder<QuerySnapshot>(
              future: _productRef.get(),
              builder: (context, connectioncheck) {
                if (connectioncheck.hasError) {
                  return Scaffold(
                    body: Text('error:${connectioncheck.error}'),
                  );
                }
                if (connectioncheck.connectionState == ConnectionState.done) {
                  return ListView(
                    padding: EdgeInsets.only(
                      top: 108.0,
                      bottom: 12.0,
                    ),
                    children: connectioncheck.data.docs.map((document) {
                      return Container(
                        child: Center(child: Text('${document.get('name')}')),
                      );
                    }).toList(),
                  );
                }
              }),
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
