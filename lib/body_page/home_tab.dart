import 'package:flutter/material.dart';
import 'package:raselshop/screens/drawer.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget newproduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 150,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1473167052083-3d31fa1f6776?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=437&q=80'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('data')],
      ),
    );
  }

  Widget Grosseryproduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 150,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1515861262549-45fc98de0aa7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=524&q=80'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('data')],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RASELSHOP'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1529170673-4217ed3ae522?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('newproduct'), Text('View All')],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  newproduct(),
                  newproduct(),
                  newproduct(),
                  newproduct(),
                  newproduct(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('Groddery Products'), Text('View All')],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Grosseryproduct(),
                  Grosseryproduct(),
                  Grosseryproduct(),
                  Grosseryproduct(),
                  Grosseryproduct(),
                  Grosseryproduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
