import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Reviews',
      style: TextStyleConstants.boldTextStyle,
    );
  }
}
