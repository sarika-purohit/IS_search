// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:internshala_trial/models/internship.dart';

// class InternshipController {
//   final String apiUrl = 'https://internshala.com/flutter_hiring/search';

//   Future<List<Internship>> fetchInternships() async {
//     try {
//       final response = await http.get(Uri.parse(apiUrl));

//       if (response.statusCode == 200) {
//         List<dynamic> internshipsJson = json.decode(response.body);

//         // Handle cases where the response might not be a list of internships
//         if (internshipsJson is List) {
//           List<Internship> internships = internshipsJson
//               .map<Internship>((json) => Internship.fromJson(json))
//               .toList();
//           return internships;
//         } else {
//           // Handle unexpected response structure
//           return _fetchStaticInternships();
//         }
//       } else {
//         return _fetchStaticInternships();
//       }
//     } catch (e) {
//       return _fetchStaticInternships();
//     }
//   }

//   List<Internship> _fetchStaticInternships() {
//     return [
//       Internship(
//         title: 'Business Development (Sales)',
//         company: 'Prosync Infotech Private Limited',
//         location: 'Delhi',
//         duration: '4 Months',
//         salary: '₹10,000/month',
//         type: 'Internship',
//         isActivelyHiring: true,
//         datePosted: '2 weeks ago',
//       ),
//       Internship(
//         title: 'UI/UX Design',
//         company: 'Nextfly Technologies Private Limited',
//         location: 'Gurgaon',
//         duration: '4 Months',
//         salary: '₹8,000-₹10,000/month',
//         type: 'Internship',
//         isActivelyHiring: true,
//         datePosted: '2 weeks ago',
//       ),
//     ];
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:internshala_trial/models/internship.dart';

class InternshipController {
  final String apiUrl = 'https://internshala.com/flutter_hiring/search';

  Future<List<Internship>> fetchInternships() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        List<dynamic> internshipsJson = json.decode(response.body);

        // Handle cases where the response might not be a list of internships
        if (internshipsJson is List) {
          List<Internship> internships = internshipsJson
              .map<Internship>((json) => Internship.fromJson(json))
              .toList();
          return internships;
        } else {
          // Handle unexpected response structure
          return _fetchStaticInternships();
        }
      } else {
        return _fetchStaticInternships();
      }
    } catch (e) {
      return _fetchStaticInternships();
    }
  }

  List<Internship> _fetchStaticInternships() {
    return [
      Internship(
        id: 65532,
        title: 'Data Science Intern',
        employmentType: 'internship',
        applicationStatusMessage: ApplicationStatusMessage(
          toShow: false,
          message: '1 applicant',
          type: 'high_applications',
        ),
        jobTitle: 'Data Science Intern',
        workFromHome: false,
        segment: '',
        segmentLabelValue: '',
        internshipTypeLabelValue: '',
        jobSegments: [],
        companyName: 'Google',
        companyUrl: '/company/google-1392204790',
        isPremium: true,
        isPremiumInternship: true,
        employerName: 'Bhavya',
        companyLogo: '6385f8a1c006b1669724321.png',
        type: 'regular',
        url:
            'data-science-internship-in-multiple-locations-at-google1704886751',
        isInternChallenge: 0,
        isExternal: false,
        isActive: true,
        expiresAt: '2024-01-24',
        closedAt: '',
        profileName: 'Data Science',
        partTime: false,
        startDate: 'Starts Immediately',
        duration: '3 Months',
        stipend: Stipend(
          salary: '₹ 50,000 /month',
          tooltip: null,
          salaryValue1: 50000,
          salaryValue2: null,
          salaryType: 'fixed',
          currency: 'INR',
          scale: 'permonth',
          largeStipendText: false,
        ),
        salary: '1000000',
        jobExperience: '2 year',
        experience: '',
        postedOn: '10 Jan\' 24',
        postedOnDateTime: 1704825000,
        applicationDeadline: '24 Jan\' 24',
        expiringIn: 'Apply by 24 Jan',
        postedByLabel: 'Today',
        postedByLabelType: 'success',
        locationNames: ['Munnar, Delhi, Lucknow, Tarn Taran'],
        locations: [
          Location(
            string: 'Munnar',
            link: 'Munnar',
            country: 'India',
            region: 'Idukki',
            locationName: 'Munnar',
          ),
          Location(
            string: 'Delhi',
            link: 'Delhi',
            country: 'India',
            region: null,
            locationName: 'Delhi',
          ),
          Location(
            string: 'Lucknow',
            link: 'Lucknow',
            country: 'India',
            region: 'Lucknow',
            locationName: 'Lucknow',
          ),
          Location(
            string: 'Tarn Taran',
            link: 'Tarn Taran',
            country: 'India',
            region: 'Tarn Taran',
            locationName: 'Tarn Taran',
          ),
        ],
        startDateComparisonFormat: '2024-01-10',
        startDate1: '2024-01-10',
        startDate2: '2024-02-14',
        isPpo: false,
        isPpoSalaryDisclosed: false,
        ppoSalary: '1 lakh',
        ppoLabelValue: 'With job offer',
        toShowExtraLabel: false,
        extraLabelValue: '',
        isExtraLabelBlack: false,
        campaignNames: [],
        campaignName: '',
        toShowInSearch: false,
        campaignUrl: '',
        campaignStartDateTime: '3rd August',
        campaignLaunchDateTime: 'August 24',
        campaignEarlyAccessStartDateTime: '15th August 2024',
        campaignEndDateTime: '6 months',
        labels: [
          Label(
            labelValue: ['Internship'],
            labelMobile: ['Internship'],
            labelApp: ['Internship'],
            labelsAppInCard: ['Internship'],
          ),
        ],
        labelsApp: 'Internship',
        labelsAppInCard: ['Internship'],
        isCovidWfhSelected: false,
        toShowCardMessage: false,
        message: '',
        isApplicationCappingEnabled: false,
        applicationCappingMessage: '',
        overrideMetaDetails: [],
        eligibleForEasyApply: false,
        eligibleForB2BApplyNow: false,
        toShowB2BLabel: false,
        isInternationalJob: false,
        toShowCoverLetter: true,
        officeDays: '5 days',
        isActivelyHiring: true,
        companyId: 655532,
        company: '',
      ),
    ];
  }
}
