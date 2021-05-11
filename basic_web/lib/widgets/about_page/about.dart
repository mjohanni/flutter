import 'package:basic_web/widgets/about_page/about_header.dart';
import 'package:basic_web/widgets/about_page/contact_me.dart';
import 'package:basic_web/widgets/about_page/info.dart';
import 'package:basic_web/widgets/centered_view/centered_view.dart';
import 'package:basic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  // const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            AboutHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(minWidth: 400, maxWidth: 500),
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Damn \n'
                      'A hard days rockin\'\n '
                      'Better slip off m\'shoes\n '
                      'Maybe give a little stretch, and a bend\n '
                      'Dip my toe to jacuzzi baby\n '
                      'Slip out this book, \"The Buttress of Windsor\"\n '
                      '"Ho ho ho who\'s this? How\'s it goin\'?\"',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 300,
                //   width: 200,
                //   child: Image.asset('matthew_guitar.jpg'),
                // ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Info(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ContactMe(),
          ],
        ),
      ),
    );
  }
}
