// import 'package:flutter/material.dart';
// import 'package:internshala_trial/models/internship.dart';

// class InternshipCard extends StatelessWidget {
//   final Internship internship;

//   const InternshipCard({super.key, required this.internship, required String internshipTitle});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (internship.isActivelyHiring)
//               Row(
//                 children: [
//                   Icon(Icons.trending_up, color: Colors.green),
//                   SizedBox(width: 4),
//                   Text(
//                     'Actively hiring',
//                     style: TextStyle(
//                         color: Colors.green, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             SizedBox(height: 8),
//             Text(
//               internship.title,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               internship.companyName,
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.location_on, size: 16),
//                 SizedBox(width: 4),
//                 Text(internship.location),
//               ],
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.access_time, size: 16),
//                 SizedBox(width: 4),
//                 Text('Duration: ${internship.duration}'),
//               ],
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.attach_money, size: 16),
//                 SizedBox(width: 4),
//                 Text(internship.salary),
//               ],
//             ),
//             SizedBox(height: 8),
//             Text(
//               internship.type,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Text(
//                 'Posted ${internship.datePosted}',
//                 style: TextStyle(fontSize: 12, color: Colors.grey[600]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:internshala_trial/models/internship.dart';

class InternshipCard extends StatelessWidget {
  final Internship internship;

  const InternshipCard({super.key, required this.internship, required String internshipTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (internship.isActivelyHiring)
              Row(
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Colors.green,
                    size: 18,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Actively hiring',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            SizedBox(height: 8),
            Text(
              internship.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              internship.companyName, // Correct parameter
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.location_on, size: 16),
                SizedBox(width: 4),
                Text(internship.location),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.access_time, size: 16),
                SizedBox(width: 4),
                Text('Duration: ${internship.duration}'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.attach_money, size: 16),
                SizedBox(width: 4),
                Text(internship.salary), // Correct parameter
              ],
            ),
            SizedBox(height: 8),
            Text(
              internship.type,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Posted ${internship.datePosted}',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
