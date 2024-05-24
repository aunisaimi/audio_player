import 'package:audioplayer_yt/pages/home_page.dart';
import 'package:audioplayer_yt/models/playlist_provider.dart';
import 'package:audioplayer_yt/themes/light_mode.dart';
import 'package:audioplayer_yt/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => ThemeProvider(),),
            ChangeNotifierProvider(create: (context) => PlaylistProvider(),
            ),
        ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

