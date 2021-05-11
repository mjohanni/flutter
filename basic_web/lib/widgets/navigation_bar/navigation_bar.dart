import 'package:basic_web/views/home/home_view.dart';
import 'package:basic_web/widgets/about_page/about.dart';
import 'package:basic_web/widgets/project_page/project_page.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.jpg'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _Home(),
              SizedBox(
                width: 60,
              ),
              _Projects(),
              SizedBox(
                width: 60,
              ),
              _About(),
            ],
          ),
        ],
      ),
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'Projects',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>ProjectPage()));
        },
      ),
    );
  }
}

class _About extends StatelessWidget {
  const _About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'About',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
        },
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {
          // Navigator.pop(context);
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
          );
        },
      ),
    );
  }
}
