import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:internshala_trial/models/internship.dart';
import 'package:internshala_trial/widgets/internship_card.dart';





// import 'package:flutter/material.dart';
// import 'package:internshala_trial/controllers/internship_controller';
// import 'package:internshala_trial/models/internship.dart';
// import 'package:internshala_trial/widgets/internship_card.dart';

// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   late Future<List<Internship>> _internships;
//   final InternshipController _controller = InternshipController();

//   @override
//   void initState() {
//     super.initState();
//     _internships = _controller.fetchInternships();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Internships'),
//       ),
//       body: FutureBuilder<List<Internship>>(
//         future: _internships,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No internships available'));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 return InternshipCard(internship: snapshot.data![index], internshipTitle: '',);
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
