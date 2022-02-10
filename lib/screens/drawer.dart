import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('rasel'),
            accountEmail: Text('soea.rasel@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('../assets/baby.jpg'),
            ),
          ),
          ListTile(
            onTap: (){},
            textColor: Colors.greenAccent,
            title: Text('User'),
            leading: Icon(
              Icons.verified_user,
              color: Colors.greenAccent,
            ),
          ),
           ListTile(
             onTap: (){},
             textColor: Colors.blue,
            title: Text('facebook'),
            leading: Icon(
              Icons.facebook,
              color: Colors.blue,
            ),
          ),
          ListTile(
            onTap: (){},
            textColor: Colors.redAccent,
            title: Text('product'),
            leading: Icon(
              Icons.production_quantity_limits,
              color: Colors.redAccent,
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [Text('Bottom text')],
            ),
          ))
        ],
      ),
    );
  }
}
