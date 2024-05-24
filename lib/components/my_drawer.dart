import 'package:audioplayer_yt/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          // logo
          const DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.music_note,
                  size: 40,
                ),
              ),
          ),

          // home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: const Text(" H O M E "),
              leading: const Icon(Icons.home_filled),
              onTap:() => Navigator.pop(context),
            ),
          ),

          // settings tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: const Text(" S E T T I N G S "),
              leading: const Icon(Icons.settings),
              onTap: () {
                // pop drawer
                Navigator.pop(context);

                // Navigate to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
