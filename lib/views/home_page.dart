import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:internshala_trial/models/internship.dart';
import 'package:internshala_trial/views/search_page.dart';
import 'package:internshala_trial/widgets/internship_card.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Internship> internships = [];

  @override
  void initState() {
    super.initState();
    fetchInternships();
  }

  Future<void> fetchInternships() async {
    final response = await http
        .get(Uri.parse('https://internshala.com/flutter_hiring/search'));
    print("response ${response.body}");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      Map<String, dynamic> internships_meta = data['internships_meta'];
      List internship_ids = data['internship_ids'];
      for (var temp in internships_meta.keys) {
        print(temp);
        internships.add(Internship.fromJson(internships_meta[temp]));
      }
      setState(() {});
      print(internships.length);

      print("Api Data $data");
    } else {
      print("not found");
      throw Exception('Failed to load internships');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internships'),
      ),
      body: ListView.builder(
        itemCount: internships.length,
        itemBuilder: (context, index) {
          return InternshipCard(
            internship: internships[index],
            internshipTitle: '',
            index: index,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedCategory = 'Internships'; // Default value
  TextEditingController searchController = TextEditingController();

  // List of popular cities and categories
  List<String> popularCities = [
    'Delhi/NCR',
    'Bangalore',
    'Mumbai',
    'Hyderabad',
    'Chennai',
    'Kolkata'
  ];

  List<String> popularCategories = [
    'Big Brands',
    'Work from Home',
    'Part-time',
    'MBA',
    'Engineering',
    'Media',
    'Design',
    'Data Science'
  ];

  // List of short term courses
  List<String> shortTermCourses = [
    'Web Development',
    'Programming with Python',
    'Digital Marketing',
    'Machine Learning',
    'Advanced Excel',
    'AutoCAD',
    'Data Science',
    'Programming with C and C++',
    'Financial Modeling and Valuation',
    'Android App Development'
  ];

  // List of short term courses
  List<String> placementGuranteeCourses = [
    'Full Stack Development',
    'Data Science',
    'Human Resource Development',
    'Digital Marketing',
    'Electric Vehicle Industry',
    'UI/UX Design',
    'Product Management',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Looking for'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonHideUnderline(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blue, width: 1.0),
                    color: Colors.white,
                  ),
                  child: DropdownButton<String>(
                    value: selectedCategory,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                      });
                    },
                    items: <String>[
                      'Internships',
                      'Jobs',
                      'Short Term Courses',
                      'Placement Guarantee Courses'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // More curved corners
                  ),
                  hintText: 'Search here...',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // More curved corners
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // More curved corners
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              if (selectedCategory == 'Short Term Courses') ...[
                Text('POPULAR COURSES',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: shortTermCourses
                      .map((course) => _buildCourseFilter(course))
                      .toList(),
                ),
              ] else if (selectedCategory == 'Placement Guarantee Courses') ...[
                Text('Placement Guarantee Courses',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: placementGuranteeCourses
                      .map((course) => _buildCourseFilter(course))
                      .toList(),
                ),
              ] else ...[
                Text('POPULAR CITIES',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: popularCities
                      .map((city) => _buildCityFilter(city))
                      .toList(),
                ),
                SizedBox(height: 24),
                Text('POPULAR CATEGORIES',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: popularCategories
                      .map((category) => _buildCategoryFilter(category))
                      .toList(),
                ),
              ],
              // Add other UI elements below...
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCityFilter(String cityName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ));
        // Handle tap for city
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(cityName, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget _buildCategoryFilter(String categoryName) {
    return GestureDetector(
      onTap: () {
        print('internships fetching');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ));
        // Handle tap for category
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(categoryName, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget _buildCourseFilter(String courseName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ));
        // Handle tap for course
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(courseName, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
