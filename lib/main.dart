///////morning one

import 'package:flutter/material.dart';
import 'package:internshala_trial/controllers/internship_controller';
import 'package:internshala_trial/views/filter_page.dart';
import 'package:provider/provider.dart';
import 'views/splash_screen.dart';
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
        '/': (context) => MyHomePage(),
        // '/MyHomePage': (context) => MyHomePage(),
        '/searchPage': (context) => SearchPage(),
      },
    );
  }
}
