import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontIcon extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  const FontIcon({Key? key, @required this.icon, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FaIcon(
        icon,
        size: 40,
        color: color,
      ),
    );
  }
}
