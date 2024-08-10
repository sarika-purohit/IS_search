import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final List<String> options;
  final Function(String value, {String filterType}) onSelected;
  final String filterType;

  const FilterWidget({
    Key? key,
    required this.options,
    required this.onSelected,
    this.filterType = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: options.map((String value) {
        return ElevatedButton(
          onPressed: () {
            onSelected(value, filterType: filterType);
          },
          child: Text(value),
        );
      }).toList(),
    );
  }
}
