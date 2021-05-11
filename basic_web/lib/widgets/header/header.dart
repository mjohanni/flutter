import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  // final String head;
  const Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'A web page about me',
            style:
                TextStyle(fontWeight: FontWeight.w800, height: 1, fontSize: 80),
          ),
        ],
      ),
    );
  }
}
