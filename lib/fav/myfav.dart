import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_provider.dart';
import 'fav_screen.dart';

class myfav extends StatefulWidget {
   myfav({super.key});

  @override
  State<myfav> createState() => _myfavState();
}

class _myfavState extends State<myfav> {




  @override
  Widget build(BuildContext context) {
    final Faviptrovider = Provider.of<Favitems>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Color(0xffFFD700),
        title: Center(child: Text('YOUR FAVOURITE BOOK LIST',style: TextStyle(color: Colors.black),)),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Faviptrovider.selectedItem.length,
              itemBuilder: (context, index) {
                return Consumer<Favitems>(builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        return;
                      }

                    },
                    splashColor:  Color(0xffFFD700),
                    title: Text('Book by chetan Bha' ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "images/authors/tan233.jpg",
                      ),
                    ),
                    trailing: Icon(value.selectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border),
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
