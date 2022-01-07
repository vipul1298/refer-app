import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRefer extends StatelessWidget {
  final String? text;
  const TextRefer({Key? key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: GoogleFonts.montserrat(
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)));
  }
}
