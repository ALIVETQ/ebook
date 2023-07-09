import 'package:ebook/profile_page.dart';
import 'package:flutter/material.dart';


class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Drawer Header',
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
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {

              Navigator.pop(context);
            },

          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text('Your Profile'),
            onTap: () {

             /// Navigator.push(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileScreen()));
            },

          ),


        ],
      ),

    );
  }
}

