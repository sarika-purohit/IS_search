import 'package:flutter/material.dart';
import 'package:internshala_trial/controllers/internship_controller.dart';
import 'package:internshala_trial/models/internship.dart';

// Define the Internship model
// models/internship.dart
class Internship {
  final String companyName;
  final String datePosted;
  final String stipend;
  final String category;
  final String location;

  Internship({
    required this.companyName,
    required this.datePosted,
    required this.stipend,
    required this.category,
    required this.location,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      companyName: json['companyName'],
      datePosted: json['datePosted'],
      stipend: json['stipend'],
      category: json['category'],
      location: json['location'],
    );
  }
}

// Define the InternshipPage widget
class InternshipPage extends StatefulWidget {
  @override
  _InternshipPageState createState() => _InternshipPageState();
}

class _InternshipPageState extends State<InternshipPage> {
  List<Internship> internships = [];
  String searchKeyword = '';
  String selectedLocation = '';
  InternshipController internshipController = InternshipController();

  @override
  void initState() {
    super.initState();
    // Initially load internships without filters
    _fetchInternships();
  }

  Future<void> _fetchInternships() async {
    final fetchedInternships = await internshipController.fetchInternships(
        // searchKeyword: searchKeyword,
        // selectedLocation: selectedLocation,
        );

    setState(() {
      internships = _fetchInternships() as List<Internship>;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Internships')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchKeyword = value;
                });
                _fetchInternships(); // Fetch data based on search
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              hint: Text('Select Location'),
              value: selectedLocation.isEmpty ? null : selectedLocation,
              onChanged: (value) {
                setState(() {
                  selectedLocation = value ?? '';
                });
                _fetchInternships(); // Fetch data based on location
              },
              items: <String>['', 'Delhi', 'Mumbai', 'Bangalore']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: internships.length,
              itemBuilder: (context, index) {
                final internship = internships[index];
                return ListTile(
                  title: Text(internship.companyName),
                  subtitle: Text(
                      '${internship.datePosted} | ${internship.stipend} | ${internship.category} | ${internship.location}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
