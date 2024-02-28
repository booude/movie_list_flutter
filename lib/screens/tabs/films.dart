import 'package:flutter/material.dart';
import 'package:movie_list_flutter/components/new_from_friends.dart';
import 'package:movie_list_flutter/components/popular_this_week.dart';
import 'package:movie_list_flutter/components/upcoming.dart';

class Films extends StatelessWidget {
  const Films({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PopularThisWeek(),
        TopRated(),
        Upcoming(),
      ],
    );
  }
}
