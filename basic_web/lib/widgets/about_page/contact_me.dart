import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLBrowser(String userURL) async {
  String url = userURL;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactMe extends StatelessWidget {
  const ContactMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                child: Text('LinkedIn'),
                onPressed: () {
                  _launchURLBrowser(
                      'https://www.linkedin.com/');
                },
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchURLBrowser('https://www.instagram.com');
                },
                child: Text('Instagram'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _launchURLBrowser('https://www.facebook.com');
                  },
                  child: Text('Facebook'))
            ],
          ),
        ],
      ),
    );
  }
}
