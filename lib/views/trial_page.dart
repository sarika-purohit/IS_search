// import 'package:flutter/material.dart';

// class InternshipSearchPage extends StatelessWidget {
//   const InternshipSearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Internships'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search here...',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text('Popular Cities', style: TextStyle(fontWeight: FontWeight.bold)),
//               Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: [
//                   Chip(label: Text('Delhi/NCR')),
//                   Chip(label: Text('Bangalore')),
//                   Chip(label: Text('Mumbai')),
//                   Chip(label: Text('Hyderabad')),
//                   Chip(label: Text('Chennai')),
//                   Chip(label: Text('Kolkata')),
//                 ],
//               ),
//               SizedBox(height: 16),
//               Text('Popular Categories', style: TextStyle(fontWeight: FontWeight.bold)),
//               Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: [
//                   Chip(label: Text('Big brands')),
//                   Chip(label: Text('Work from home')),
//                   Chip(label: Text('Part-time')),
//                   Chip(label: Text('MBA')),
//                   Chip(label: Text('Engineering')),
//                   Chip(label: Text('Media')),
//                   Chip(label: Text('Design')),
//                   Chip(label: Text('Data Science')),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
