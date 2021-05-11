import 'package:basic_web/widgets/action/contact_action.dart';
import 'package:basic_web/widgets/centered_view/centered_view.dart';
import 'package:basic_web/widgets/header/header.dart';
import 'package:basic_web/widgets/hobbies/hobbies.dart';
import 'package:basic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Header(),
            Expanded(
                child: Row(
              children: <Widget>[
                Hobbies(),
                Expanded(
                  child: Center(
                    child: ContactAction('Contact me:'),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
