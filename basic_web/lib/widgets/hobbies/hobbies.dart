import 'package:flutter/material.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text("some basic overview about me. "
              "plan on reducing font and adding a "
              "short paragraph about myself.",
            style: TextStyle(
              fontSize: 50, height: 0.9),
          )
        ],
      ),
    );
  }
}
