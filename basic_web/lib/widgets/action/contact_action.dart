import 'package:basic_web/views/home/home_view.dart';
import 'package:basic_web/widgets/about_page/about.dart';
import 'package:flutter/material.dart';

class ContactAction extends StatelessWidget {
  final String title;
  ContactAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: ElevatedButton(
          child: Text(
            'More...',
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          },
          // (){
          //   Navigator.push(
          //       context,
          //       // MaterialPageRoute(builder: (context) => SecondRoute()),),
          // },
        )
        // Text(
        //   title,
        //   style: TextStyle(
        //       fontSize: 18,
        //       fontWeight: FontWeight.w800,
        //       color: Colors.white,
        //   ),
        // ),
        // decoration: BoxDecoration(color: Color.fromARGB(255,31,229,146),
        // borderRadius: BorderRadius.circular(5)),
        );
  }
}
