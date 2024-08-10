// // // // class Internship {
// // // //   final String title;
// // // //   final String companyName;
// // // //   final String location;
// // // //   final String duration;

// // // //   Internship({
// // // //     required this.title,
// // // //     required this.companyName,
// // // //     required this.location,
// // // //     required this.duration,
// // // //   });

// // // //   factory Internship.fromJson(Map<String, dynamic> json) {
// // // //     return Internship(
// // // //       title: json['title']??"",
// // // //       companyName: json['company_name']??"",
// // // //       location: json['location']??"",
// // // //       duration: json['duration']??"",
// // // //     );
// // // //   }

// // // // }

// // // class Internship {
// // //   final String title;
// // //   final String companyName;
// // //   final String location;
// // //   final String duration;
// // //   final String salary;
// // //   final String type;
// // //   final bool isActivelyHiring;
// // //   final String datePosted;

// // //   Internship({
// // //     required this.title,
// // //     required this.companyName,
// // //     required this.location,
// // //     required this.duration,
// // //     required this.salary,
// // //     required this.type,
// // //     required this.isActivelyHiring,
// // //     required this.datePosted,
// // //   });

// // //   // Method to create an Internship instance from JSON
// // //   factory Internship.fromJson(Map<String, dynamic> json) {
// // //     return Internship(
// // //       title: json['title'],
// // //       companyName: json['companyName'],
// // //       location: json['location'],
// // //       duration: json['duration'],
// // //       salary: json['salary'],
// // //       type: json['type'],
// // //       isActivelyHiring: json['isActivelyHiring'],
// // //       datePosted: json['datePosted'],
// // //     );
// // //   }

// // //   // Method to convert an Internship instance to JSON
// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'title': title,
// // //       'companyName': companyName,
// // //       'location': location,
// // //       'duration': duration,
// // //       'salary': salary,
// // //       'type': type,
// // //       'isActivelyHiring': isActivelyHiring,
// // //       'datePosted': datePosted,
// // //     };
// // //   }
// // // }

// // class Internship {
// //   final String title;
// //   final String companyName; // Ensure this matches
// //   final String location;
// //   final String duration;
// //   final String salary; // Ensure this matches
// //   final String type;
// //   final bool isActivelyHiring;
// //   final String datePosted;

// //   Internship({
// //     required this.title,
// //     required this.companyName, // Ensure this matches
// //     required this.location,
// //     required this.duration,
// //     required this.salary, // Ensure this matches
// //     required this.type,
// //     required this.isActivelyHiring,
// //     required this.datePosted,
// //   });

// //   factory Internship.fromJson(Map<String, dynamic> json) {
// //     return Internship(
// //       title: json['title'],
// //       companyName: json['company_name'], // Ensure this matches
// //       location: json['location'],
// //       duration: json['duration'],
// //       salary: json['salary'], // Ensure this matches
// //       type: json['type'],
// //       isActivelyHiring: json['is_actively_hiring'],
// //       datePosted: json['date_posted'],
// //     );
// //   }
// // }
// class Internship {
//   final String title;
//   final String companyName; // Make sure this matches
//   final String location;
//   final String duration;
//   final String salary; // Make sure this matches
//   final String type;
//   final bool isActivelyHiring;
//   final String datePosted;

//   Internship({
//     required this.title,
//     required this.companyName, // Make sure this matches
//     required this.location,
//     required this.duration,
//     required this.salary, // Make sure this matches
//     required this.type,
//     required this.isActivelyHiring,
//     required this.datePosted,
//   });

//   factory Internship.fromJson(Map<String, dynamic> json) {
//     return Internship(
//       title: json['title'],
//       companyName: json['company_name'], // Make sure this matches
//       location: json['location'],
//       duration: json['duration'],
//       salary: json['salary'], // Make sure this matches
//       type: json['type'],
//       isActivelyHiring: json['is_actively_hiring'],
//       datePosted: json['date_posted'],
//     );
//   }
// }

import 'package:flutter/foundation.dart';

class Internship {
  final String title;
  final String companyName;
  final String location;
  final String duration;
  final String salary;
  final String type;
  final bool isActivelyHiring;
  final String datePosted;

  Internship({
    required this.title,
    required this.companyName,
    required this.location,
    required this.duration,
    required this.salary,
    required this.type,
    required this.isActivelyHiring,
    required this.datePosted,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      title: json['title'] ?? 'No Title',
      companyName: json['company'] ?? 'No Company',
      location: json['location'] ?? 'No Location',
      duration: json['duration'] ?? 'No Duration',
      salary: json['salary'] ?? 'No Salary',
      type: json['type'] ?? 'No Type',
      isActivelyHiring: json['isActivelyHiring'] ?? false,
      datePosted: json['datePosted'] ?? 'No Date Posted',
    );
  }
}
