import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHome extends StatelessWidget {
  final String? text;
  const TextHome({Key? key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text!,
        style: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
