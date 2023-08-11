import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Charify',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to the home screen
              // You can replace this with the actual route
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text('Campaigns'),
            onTap: () {
              // Navigate to the campaigns screen
              // You can replace this with the actual route
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Perform logout action
              // You can implement the logout functionality here
            },
          ),
        ],
      ),
    );
  }
}
