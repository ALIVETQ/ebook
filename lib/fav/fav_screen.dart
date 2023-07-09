import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_provider.dart';
import 'myfav.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  List<int> _selectedItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      
      appBar: AppBar(
        backgroundColor:Color(0xffFFD700) ,
        title: Center(child: Text('LIST OF BOOKS',style: TextStyle(color: Colors.black))),
        actions: [

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => myfav()));
          },child: Icon(Icons.favorite_border,color: Colors.black,)),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Consumer<Favitems>(builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }

                    },
                    splashColor:  Color(0xffFFD700),

                    title: Text('Book by chetan Bha(dummy data)' ),
                    leading: const CircleAvatar(
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
