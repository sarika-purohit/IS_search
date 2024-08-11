// // import 'package:flutter/material.dart';
// // import 'package:internshala_trial/models/internship.dart';

// // class InternshipCard extends StatelessWidget {
// //   final Internship internship;

// //   const InternshipCard({super.key, required this.internship, required String internshipTitle});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             if (internship.isActivelyHiring)
// //               Row(
// //                 children: [
// //                   Icon(Icons.trending_up, color: Colors.green),
// //                   SizedBox(width: 4),
// //                   Text(
// //                     'Actively hiring',
// //                     style: TextStyle(
// //                         color: Colors.green, fontWeight: FontWeight.bold),
// //                   ),
// //                 ],
// //               ),
// //             SizedBox(height: 8),
// //             Text(
// //               internship.title,
// //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 8),
// //             Text(
// //               internship.companyName,
// //               style: TextStyle(color: Colors.grey[600]),
// //             ),
// //             SizedBox(height: 4),
// //             Row(
// //               children: [
// //                 Icon(Icons.location_on, size: 16),
// //                 SizedBox(width: 4),
// //                 Text(internship.location),
// //               ],
// //             ),
// //             SizedBox(height: 4),
// //             Row(
// //               children: [
// //                 Icon(Icons.access_time, size: 16),
// //                 SizedBox(width: 4),
// //                 Text('Duration: ${internship.duration}'),
// //               ],
// //             ),
// //             SizedBox(height: 4),
// //             Row(
// //               children: [
// //                 Icon(Icons.attach_money, size: 16),
// //                 SizedBox(width: 4),
// //                 Text(internship.salary),
// //               ],
// //             ),
// //             SizedBox(height: 8),
// //             Text(
// //               internship.type,
// //               style: TextStyle(fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 8),
// //             Align(
// //               alignment: Alignment.bottomRight,
// //               child: Text(
// //                 'Posted ${internship.datePosted}',
// //                 style: TextStyle(fontSize: 12, color: Colors.grey[600]),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:internshala_trial/models/internship.dart';

// class InternshipCard extends StatelessWidget {
//   final Internship internship;

//   const InternshipCard(
//       {super.key, required this.internship, required String internshipTitle});

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
//                   Icon(
//                     Icons.trending_up,
//                     color: Colors.green,
//                     size: 18,
//                   ),
//                   SizedBox(width: 4),
//                   Text(
//                     'Actively hiring',
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
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
//               internship.companyName, // Correct parameter
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.location_on_outlined, size: 16),
//                 SizedBox(width: 4),
//                 Text(internship.location),
//               ],
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.play_circle_outline_sharp, size: 16),
//                 SizedBox(width: 4),
//                 Text('Duration: ${internship.duration}'),
//               ],
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(Icons.money_rounded, size: 16),
//                 SizedBox(width: 4),
//                 Text(internship.salary), // Correct parameter
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
import 'package:internshala_trial/controllers/internship_controller.dart';
import 'package:internshala_trial/models/internship.dart';

class InternshipCard extends StatelessWidget {
  final Internship internship;
  final int index;

  const InternshipCard(
      {Key? key,
      required this.internship,
      required String internshipTitle,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (internship.isActivelyHiring)
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                width: 150,
                height: 35,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.trending_up, color: Colors.blueAccent),
                    SizedBox(width: 4.0),
                    Text('Actively hiring'),
                  ],
                ),
              ),
            Text(
              internship.title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.grey[200], // Grey box background
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              internship.company,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                Icon(Icons.location_on_outlined, color: Colors.grey[600]),
                SizedBox(width: 4.0),
                Text('Not Found'),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                Icon(Icons.play_circle_outlined, color: Colors.grey[600]),
                SizedBox(width: 4.0),
                Text(internship.duration),
                SizedBox(width: 16.0),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
                SizedBox(width: 4.0),
                Text(internship.duration),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                Icon(Icons.money_outlined, color: Colors.grey[600]),
                SizedBox(width: 4.0),
                Text(internship.stipend.salary),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                //Icon(Icons.work_outline, color: Colors.grey[600]),
                SizedBox(width: 4.0),
                Text(internship.type),
              ],
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Posted ${internship.postedOn}',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Divider(color: Colors.grey[300]), // Horizontal rule
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  // Define action for "View Details"
                },
                child: Text('View Details'),
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
