import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Journal',
      style: TextStyleConstants.boldTextStyle,
    );
  }
}
