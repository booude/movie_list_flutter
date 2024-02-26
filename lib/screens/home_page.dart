import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color(0xFF181B20),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Text(
              'Popular',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.blueGrey[800],
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              )
            ],
            bottom: const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelStyle: TextStyle(fontWeight: FontWeight.w300),
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('FILMS'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('REVIEWS'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('LISTS'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('JOURNAL'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          drawer: Drawer(),
          body: TabBarView(
            children: [
              Scaffold(
                backgroundColor: Colors.amber,
              ),
              Scaffold(
                backgroundColor: Colors.teal,
              ),
              Scaffold(
                backgroundColor: Colors.indigo,
              ),
              Scaffold(
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
