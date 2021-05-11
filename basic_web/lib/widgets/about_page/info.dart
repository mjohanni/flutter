import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Display more information about myself in this Text block'),
        ],
      ),
    );
  }
}
