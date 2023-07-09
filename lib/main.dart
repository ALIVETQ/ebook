import 'package:ebook/profile_page.dart';
import 'package:ebook/signup.dart';
import 'package:ebook/splash.dart';
import 'package:ebook/wishliast.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav/fav_provider.dart';
import 'fav/fav_screen.dart';
import 'homescreen.dart';
import 'login_.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Favitems()),
    ],
      child: MaterialApp(
        
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),

      ),
    );
  }
}
