import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDashboard extends StatelessWidget {
  final String? text;
  const TextDashboard({Key? key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text!,
        style: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 12)),
      ),
    );
  }
}
