import 'package:ebook/profile_page.dart';
import 'package:ebook/wishliast.dart';
import 'package:flutter/material.dart';

import 'fav/fav_screen.dart';
import 'login_.dart';


class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xffFFD700),
              ),
              accountName: Text("User Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
              accountEmail: Text("badkul@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "images/tan2004.png",
                ),
              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('contact us'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text('reviews'),
          ),

          ListTile(
            leading: Icon(Icons.heart_broken),
            title: Text('wishlist'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favouritescreen()));
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log out'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginscreen()));
            },


          ),
        ],),
    );
  }
}