import 'package:flutter/material.dart';

class ClubCrafter extends StatefulWidget {
  const ClubCrafter({super.key});

  @override
  State<ClubCrafter> createState() => _ClubCrafterState();
}

class _ClubCrafterState extends State<ClubCrafter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Club Crafter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: null,
    );
  }
}
