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
  int id;
  String title;
  String employmentType;
  ApplicationStatusMessage applicationStatusMessage;
  String jobTitle;
  bool workFromHome;
  String segment;
  String segmentLabelValue;
  String internshipTypeLabelValue;
  List<String> jobSegments;
  String companyName;
  String companyUrl;
  bool isPremium;
  bool isPremiumInternship;
  String employerName;
  String companyLogo;
  String type;
  String url;
  int companyId;
  String company;
  bool isActivelyHiring;
  int isInternChallenge;
  bool isExternal;
  bool isActive;
  String expiresAt;
  String closedAt;
  String profileName;
  bool partTime;
  String startDate;
  String duration;
  Stipend stipend;
  String salary;
  String jobExperience;
  String experience;
  String postedOn;
  int postedOnDateTime;
  String applicationDeadline;
  String expiringIn;
  String postedByLabel;
  String postedByLabelType;
  List<String> locationNames;
  List<Location> locations;
  String startDateComparisonFormat;
  String startDate1;
  String startDate2;
  bool isPpo;
  bool isPpoSalaryDisclosed;
  String ppoSalary;
  String ppoLabelValue;
  bool toShowExtraLabel;
  String extraLabelValue;
  bool isExtraLabelBlack;
  List<String> campaignNames;
  String campaignName;
  bool toShowInSearch;
  String campaignUrl;
  String campaignStartDateTime;
  String campaignLaunchDateTime;
  String campaignEarlyAccessStartDateTime;
  String campaignEndDateTime;
  List<Label> labels;
  String labelsApp;
  List<String> labelsAppInCard;
  bool isCovidWfhSelected;
  bool toShowCardMessage;
  String message;
  bool isApplicationCappingEnabled;
  String applicationCappingMessage;
  List<String> overrideMetaDetails;
  bool eligibleForEasyApply;
  bool eligibleForB2BApplyNow;
  bool toShowB2BLabel;
  bool isInternationalJob;
  bool toShowCoverLetter;
  String officeDays;

  Internship({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    required this.jobTitle,
    required this.workFromHome,
    required this.segment,
    required this.segmentLabelValue,
    required this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternChallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.salary,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
    required this.isActivelyHiring,
    required this.companyId,
    required this.company,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      employmentType: json['employment_type'] ?? '',
      applicationStatusMessage:
          ApplicationStatusMessage.fromJson(json['application_status_message']),
      jobTitle: json['job_title'] ?? '',
      workFromHome: json['work_from_home'] ?? false,
      segment: json['segment'] ?? '',
      segmentLabelValue: json['segment_label_value'] ?? '',
      internshipTypeLabelValue: json['internship_type_label_value'] ?? '',
      jobSegments: List<String>.from(json['job_segments']),
      companyName: json['company_name'] ?? '',
      companyUrl: json['company_url'] ?? '',
      isPremium: json['is_premium'] ?? false,
      isPremiumInternship: json['is_premium_internship'] ?? false,
      employerName: json['employer_name'] ?? '',
      companyLogo: json['company_logo'] ?? '',
      type: json['type'] ?? '',
      url: json['url'] ?? '',
      isInternChallenge: json['is_internchallenge'] ?? 0,
      isExternal: json['is_external'] ?? false,
      isActive: json['is_active'] ?? false,
      expiresAt: json['expires_at'] ?? '',
      closedAt: json['closed_at'] ?? '',
      profileName: json['profile_name'] ?? '',
      partTime: json['part_time'] ?? false,
      startDate: json['start_date'] ?? '',
      duration: json['duration'] ?? '',
      stipend: Stipend.fromJson(json['stipend']),
      salary: json['salary'] ?? '',
      jobExperience: json['job_experience'] ?? '',
      experience: json['experience'] ?? '',
      postedOn: json['posted_on'] ?? '',
      postedOnDateTime: json['postedOnDateTime'],
      applicationDeadline: json['application_deadline'] ?? '',
      expiringIn: json['expiring_in'] ?? '',
      postedByLabel: json['posted_by_label'] ?? '',
      postedByLabelType: json['posted_by_label_type'] ?? '',
      locationNames: List<String>.from(json['location_names']) ?? [],
      locations:
          (json['locations'] as List).map((i) => Location.fromJson(i)).toList(),
      startDateComparisonFormat: json['start_date_comparison_format'] ?? [],
      startDate1: json['start_date1'] ?? '',
      startDate2: json['start_date2'] ?? '',
      isPpo: json['is_ppo'] ?? false,
      isPpoSalaryDisclosed: json['is_ppo_salary_disclosed'],
      ppoSalary: json['ppo_salary'] ?? '',
      ppoLabelValue: json['ppo_label_value'],
      toShowExtraLabel: json['to_show_extra_label'],
      extraLabelValue: json['extra_label_value'],
      isExtraLabelBlack: json['is_extra_label_black'],
      campaignNames: List<String>.from(json['campaign_names']),
      campaignName: json['campaign_name'],
      toShowInSearch: json['to_show_in_search'],
      campaignUrl: json['campaign_url'],
      campaignStartDateTime: json['campaign_start_date_time'] ?? '',
      campaignLaunchDateTime: json['campaign_launch_date_time']?? '',
      campaignEarlyAccessStartDateTime:
          json['campaign_early_access_start_date_time']?? '',
      campaignEndDateTime: json['campaign_end_date_time']?? '',
      labels: (json['labels'] as List).map((i) => Label.fromJson(i)).toList()?? [],
      labelsApp: json['labels_app']?? '',
      labelsAppInCard: List<String>.from(json['labels_app_in_card'])?? [],
      isCovidWfhSelected: json['is_covid_wfh_selected']?? false,
      toShowCardMessage: json['to_show_card_message']?? false,
      message: json['message']?? '',
      isApplicationCappingEnabled: json['is_application_capping_enabled']?? false,
      applicationCappingMessage: json['application_capping_message']?? '',
      overrideMetaDetails: List<String>.from(json['override_meta_details'])?? [],
      eligibleForEasyApply: json['eligible_for_easy_apply']?? false,
      eligibleForB2BApplyNow: json['eligible_for_b2b_apply_now']?? false,
      toShowB2BLabel: json['to_show_b2b_label']?? false,
      isInternationalJob: json['is_international_job']?? false,
      toShowCoverLetter: json['to_show_cover_letter'] ?? false,
      officeDays: json['office_days'] ?? '',
      isActivelyHiring: true,
      companyId: json['id'] ?? 0,
      company: json['company_name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'employment_type': employmentType,
      'application_status_message': applicationStatusMessage.toJson(),
      'job_title': jobTitle,
      'work_from_home': workFromHome,
      'segment': segment,
      'segment_label_value': segmentLabelValue,
      'internship_type_label_value': internshipTypeLabelValue,
      'job_segments': jobSegments,
      'company_name': companyName,
      'company_url': companyUrl,
      'is_premium': isPremium,
      'is_premium_internship': isPremiumInternship,
      'employer_name': employerName,
      'company_logo': companyLogo,
      'type': type,
      'url': url,
      'is_internchallenge': isInternChallenge,
      'is_external': isExternal,
      'is_active': isActive,
      'expires_at': expiresAt,
      'closed_at': closedAt,
      'profile_name': profileName,
      'part_time': partTime,
      'start_date': startDate,
      'duration': duration,
      'stipend': stipend.toJson(),
      'salary': salary,
      'job_experience': jobExperience,
      'experience': experience,
      'posted_on': postedOn,
      'postedOnDateTime': postedOnDateTime,
      'application_deadline': applicationDeadline,
      'expiring_in': expiringIn,
      'posted_by_label': postedByLabel,
      'posted_by_label_type': postedByLabelType,
      'location_names': locationNames,
      'locations': locations.map((i) => i.toJson()).toList(),
      'start_date_comparison_format': startDateComparisonFormat,
      'start_date1': startDate1,
      'start_date2': startDate2,
      'is_ppo': isPpo,
      'is_ppo_salary_disclosed': isPpoSalaryDisclosed,
      'ppo_salary': ppoSalary,
      'ppo_label_value': ppoLabelValue,
      'to_show_extra_label': toShowExtraLabel,
      'extra_label_value': extraLabelValue,
      'is_extra_label_black': isExtraLabelBlack,
      'campaign_names': campaignNames,
      'campaign_name': campaignName,
      'to_show_in_search': toShowInSearch,
      'campaign_url': campaignUrl,
      'campaign_start_date_time': campaignStartDateTime,
      'campaign_launch_date_time': campaignLaunchDateTime,
      'campaign_early_access_start_date_time': campaignEarlyAccessStartDateTime,
      'campaign_end_date_time': campaignEndDateTime,
      'labels': labels.map((i) => i.toJson()).toList(),
      'labels_app': labelsApp,
      'labels_app_in_card': labelsAppInCard,
      'is_covid_wfh_selected': isCovidWfhSelected,
      'to_show_card_message': toShowCardMessage,
      'message': message,
      'is_application_capping_enabled': isApplicationCappingEnabled,
      'application_capping_message': applicationCappingMessage,
      'override_meta_details': overrideMetaDetails,
      'eligible_for_easy_apply': eligibleForEasyApply,
      'eligible_for_b2b_apply_now': eligibleForB2BApplyNow,
      'to_show_b2b_label': toShowB2BLabel,
      'is_international_job': isInternationalJob,
      'to_show_cover_letter': toShowCoverLetter,
      'office_days': officeDays,
    };
  }
}

class ApplicationStatusMessage {
  bool toShow;
  String message;
  String type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
    return ApplicationStatusMessage(
      toShow: json['to_show'],
      message: json['message'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'to_show': toShow,
      'message': message,
      'type': type,
    };
  }
}

class Stipend {
  String salary;
  dynamic tooltip;
  int salaryValue1;
  dynamic salaryValue2;
  String salaryType;
  String currency;
  String scale;
  bool largeStipendText;

  Stipend({
    required this.salary,
    this.tooltip,
    required this.salaryValue1,
    this.salaryValue2,
    required this.salaryType,
    required this.currency,
    required this.scale,
    required this.largeStipendText,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) {
    return Stipend(
      salary: json['salary'],
      tooltip: json['tooltip'],
      salaryValue1: json['salaryValue1'],
      salaryValue2: json['salaryValue2'],
      salaryType: json['salaryType'],
      currency: json['currency'],
      scale: json['scale'],
      largeStipendText: json['large_stipend_text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'salary': salary,
      'tooltip': tooltip,
      'salaryValue1': salaryValue1,
      'salaryValue2': salaryValue2,
      'salaryType': salaryType,
      'currency': currency,
      'scale': scale,
      'large_stipend_text': largeStipendText,
    };
  }
}

class Location {
  String string;
  String link;
  String country;
  String? region;
  String locationName;

  Location({
    required this.string,
    required this.link,
    required this.country,
    this.region,
    required this.locationName,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      string: json['string'],
      link: json['link'],
      country: json['country'],
      region: json['region'],
      locationName: json['locationName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'string': string,
      'link': link,
      'country': country,
      'region': region,
      'location_name': locationName,
    };
  }
}

class Label {
  List<String> labelValue;
  List<String> labelMobile;
  List<String> labelApp;
  List<String> labelsAppInCard;

  Label({
    required this.labelValue,
    required this.labelMobile,
    required this.labelApp,
    required this.labelsAppInCard,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      labelValue: List<String>.from(json['label_value']),
      labelMobile: List<String>.from(json['label_mobile']),
      labelApp: List<String>.from(json['label_app']),
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label_value': labelValue,
      'label_mobile': labelMobile,
      'label_app': labelApp,
      'labels_app_in_card': labelsAppInCard,
    };
  }
}
