import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lists',
      style: TextStyleConstants.boldTextStyle,
    );
  }
}
