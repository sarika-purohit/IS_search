// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:internshala_trial/models/internship.dart';
// import 'package:internshala_trial/widgets/internship_card.dart';

// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   List<Internship> internships = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchInternships();
//   }

//   Future<void> fetchInternships() async {
//     final response = await http
//         .get(Uri.parse('https://internshala.com/flutter_hiring/search'));
//     print("response ${response.body}");
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = json.decode(response.body);
//       Map<String, dynamic> internships_meta = data['internships_meta'];
//       // List internship_ids = data['internship_ids'];
//       for (var temp in internships_meta.keys) {
//         print(temp);
//         internships.add(Internship.fromJson(internships_meta[temp]));
//       }
//       setState(() {});

//       print("Api Data $data");
//     } else {
//       throw Exception('Failed to load internships');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Internships'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.filter_list),
//             onPressed: () {
//               Navigator.of(context).pushNamed('/filterPage');
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: internships.length,
//         itemBuilder: (context, index) {
//           return InternshipCard(
//             internship: internships[index],
//             internshipTitle: '',
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:internshala_trial/controllers/internship_controller';
import 'package:internshala_trial/models/internship.dart';
import 'package:internshala_trial/widgets/internship_card.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<List<Internship>> _internships;
  final InternshipController _controller = InternshipController();

  @override
  void initState() {
    super.initState();
    _internships = _controller.fetchInternships();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internships'),
      ),
      body: FutureBuilder<List<Internship>>(
        future: _internships,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No internships available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return InternshipCard(internship: snapshot.data![index], internshipTitle: '',);
              },
            );
          }
        },
      ),
    );
  }
}
