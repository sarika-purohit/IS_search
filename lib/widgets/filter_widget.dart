// import 'package:flutter/material.dart';

// class FilterWidget extends StatelessWidget {
//   final List<String> options;
//   final Function(String value, {String filterType}) onSelected;
//   final String filterType;

//   const FilterWidget({
//     Key? key,
//     required this.options,
//     required this.onSelected,
//     this.filterType = '',
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 8.0,
//       runSpacing: 8.0,
//       children: options.map((String value) {
//         return ElevatedButton(
//           onPressed: () {
//             onSelected(value, filterType: filterType);
//           },
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// custom_city_container.dart
import 'package:flutter/material.dart';

class CustomCityContainer extends StatelessWidget {
  final String cityName;
  final VoidCallback onTap;

  const CustomCityContainer({
    Key? key,
    required this.cityName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          cityName,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

