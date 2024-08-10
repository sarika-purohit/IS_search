import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:internshala_trial/models/internship.dart';
import 'package:internshala_trial/widgets/internship_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Internship> internships = [];
  List<Internship> filteredInternships = [];
  bool isLoading = true;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    fetchInternships();
  }

  Future<void> fetchInternships() async {
    setState(() {
      isLoading = true;
      isError = false;
    });

    try {
      final response = await http
          .get(Uri.parse('https://internshala.com/flutter_hiring/search'));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        print("response ${response.body}");
        Map<String, dynamic> internshipsMeta = data['internships_meta'];

        List<Internship> fetchedInternships = [];
        internshipsMeta.forEach((key, value) {
          fetchedInternships.add(Internship.fromJson(value));
        });

        setState(() {
          internships = fetchedInternships;
          filteredInternships = internships; // Initialize filteredInternships
          isLoading = false;
        });
      } else {
        setState(() {
          isError = true;
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching internships: $e');
      setState(() {
        isError = true;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('Internships')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (isError) {
      return Scaffold(
        appBar: AppBar(title: Text('Internships')),
        body: Center(child: Text('Failed to load internships.')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Looking for'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Search here...',
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/InternshipPage');
                },
              ),
              SizedBox(height: 24),
              Text('POPULAR CITIES',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Delhi/NCR'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Bangalore'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Mumbai'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Hyderabad'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Chennai'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your city filter logic here
                    },
                    child: Text('Kolkata'),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text('POPULAR CATEGORIES',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Big brands'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Work from home'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Part-time'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('MBA'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Engineering'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Media'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Design'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your category filter logic here
                    },
                    child: Text('Data Science'),
                  ),
                ],
              ),
              SizedBox(height: 24),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: filteredInternships.length,
                itemBuilder: (context, index) {
                  return InternshipCard(
                    internship: filteredInternships[index],
                    internshipTitle: '',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
