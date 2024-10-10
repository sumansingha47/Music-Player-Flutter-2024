import 'package:flutter/material.dart';
import 'package:music_player_flutter_2024/Pages/SlashScreen.dart';
import 'package:music_player_flutter_2024/Pages/SongPage.dart';
import 'package:music_player_flutter_2024/config/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: darkTheme,
      home: const SongPage(),
    );
  }
}
