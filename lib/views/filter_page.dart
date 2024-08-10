// import 'package:flutter/material.dart';

// class FilterPage extends StatefulWidget {
//   @override
//   _FilterPageState createState() => _FilterPageState();
// }

// class _FilterPageState extends State<FilterPage> {
//   String selectedProfile = '';
//   String selectedCity = '';
//   String selectedDuration = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Filters'),
//       ),
//       body: Column(
//         children: [
//           DropdownButton<String>(
//             value: selectedProfile.isEmpty ? null : selectedProfile,
//             hint: Text('Select Profile'),
//             items: <String>['Profile 1', 'Profile 2', 'Profile 3'].map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (newValue) {
//               setState(() {
//                 selectedProfile = newValue!;
//               });
//             },
//           ),
//           DropdownButton<String>(
//             value: selectedCity.isEmpty ? null : selectedCity,
//             hint: Text('Select City'),
//             items: <String>['City 1', 'City 2', 'City 3'].map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (newValue) {
//               setState(() {
//                 selectedCity = newValue!;
//               });
//             },
//           ),
//           DropdownButton<String>(
//             value: selectedDuration.isEmpty ? null : selectedDuration,
//             hint: Text('Select Duration'),
//             items: <String>['1 month', '2 months', '3 months'].map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (newValue) {
//               setState(() {
//                 selectedDuration = newValue!;
//               });
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               // Apply filters and navigate back
//               Navigator.of(context).pop();
//             },
//             child: Text('Apply Filters'),
//           ),
//         ],
//       ),
//     );
//   }
// }
