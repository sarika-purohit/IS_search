///////morning one

import 'package:flutter/material.dart';
import 'package:internshala_trial/views/splash_screen.dart';
import 'views/search_page.dart';
import 'package:internshala_trial/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // return ChangeNotifierProvider(
      // create: (context) => InternshipController()..fetchInternships(),

      debugShowCheckedModeBanner: false,
      title: 'Internshala Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/MyHomePage': (context) => MyHomePage(),
        
        //'/searchPage': (context) => SearchPage(),
      },
    );
  }
}
