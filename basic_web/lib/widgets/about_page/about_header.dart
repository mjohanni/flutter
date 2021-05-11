import 'package:flutter/material.dart';

class AboutHeader extends StatelessWidget {
  // final String head;
  const AboutHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'About Section',
            style:
            TextStyle(fontWeight: FontWeight.w800, height: 1, fontSize: 80),
          ),
        ],
      ),
    );
  }
}
