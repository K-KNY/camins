import 'package:camins/screens/trail_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CaminsApp());
}

class CaminsApp extends StatelessWidget {
  const CaminsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.roboto().fontFamily,),
      home: TrailDetailScreen(),
    );
  }
}
