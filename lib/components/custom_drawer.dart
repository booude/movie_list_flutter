import 'package:flutter/material.dart';
import 'package:movie_list_flutter/constants/constants.dart';
import 'package:movie_list_flutter/constants/text_style_constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constants.dark,
      surfaceTintColor: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            margin: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/47369659?v=4'),
                  radius: 40.0,
                ),
                SizedBox(height: 10.0),
                Text('Dani Calliari', style: TextStyleConstants.boldTextStyle),
              ],
            ),
          ),
          ListTile(
            title:
                const Text('Popular', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.star_border, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title:
                const Text('Search', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.search, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          // Divider
          const Divider(height: 1.0, thickness: 0.2, color: Colors.black),
          ListTile(
            title:
                const Text('Profile', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.account_circle, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Watchlist',
                style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.bookmark_border, color: Colors.white),
            onTap: () {
              // Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title:
                const Text('Lists', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.list, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title:
                const Text('Diary', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.book, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title:
                const Text('Reviews', style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.message, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Activity',
                style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.notifications_none, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings',
                style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.settings, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Sign out',
                style: TextStyleConstants.whiteTextStyle),
            leading: const Icon(Icons.logout, color: Colors.white),
            onTap: () {
              // TODO: Handle navigation
              Navigator.pop(context);
            },
          ),

          const ListTile(
            title: Text(
              'Version 0.0.1 (Development)',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
