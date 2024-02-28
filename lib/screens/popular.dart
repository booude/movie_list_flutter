import 'package:flutter/material.dart';
import 'package:movie_list_flutter/components/custom_drawer.dart';
import 'package:movie_list_flutter/components/popular_tabs.dart';
import 'package:movie_list_flutter/constants/constants.dart';
import 'package:movie_list_flutter/screens/tabs/tabs.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  // List<String> data = ['Item 1', 'Item 2', 'Item 3'];

  // Future<void> _refreshData() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   setState(() {
  //     data.insert(0, 'New item');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Constants.dark,
          drawer: const CustomDrawer(),
          appBar: AppBar(
            title: const Text(
              'Popular',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              )
            ],
            bottom: const PopularTabs(),
          ),
          body: const TabBarView(
            children: [
              Films(),
              Reviews(),
              Lists(),
              Journal(),
            ],
          ),
        ),
      ),
    );
  }
}
