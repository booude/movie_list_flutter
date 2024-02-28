import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/constants.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';

class PopularTabs extends StatelessWidget implements PreferredSizeWidget {
  const PopularTabs({super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(48.0);
  }

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      overlayColor: MaterialStatePropertyAll(Colors.transparent),
      dividerColor: Colors.transparent,
      labelColor: Colors.white,
      indicatorColor: Constants.green,
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      unselectedLabelColor: Colors.white,
      tabs: [
        Tab(child: Text('FILMS', style: TextStyleConstants.tabTextStyle)),
        Tab(child: Text('REVIEWS', style: TextStyleConstants.tabTextStyle)),
        Tab(child: Text('LISTS', style: TextStyleConstants.tabTextStyle)),
        Tab(child: Text('JOURNAL', style: TextStyleConstants.tabTextStyle)),
      ],
    );
  }
}
