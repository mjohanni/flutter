import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo Page'),
        ),
        body: ListView( //allows for scrolling
          children: [
            Image.asset(
              'ponyo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            _TitleRow(),
            _ButtonSection(color: color),
            _TextSection(),
          ],
        ),
      ),
    );
  }
}

class _TitleRow extends StatelessWidget {
  const _TitleRow();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2//
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Lake Ponyo.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              Text('Okinawa, Studio Ghibli',
              style: TextStyle(
                color: Colors.grey,
              ),)
              ],
            ),
          ),
        FavoriteWidget(),
        ],
      ),
    );
  }
}

class _ButtonCol extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  _ButtonCol({required this.icon,required this.color,required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonCol(icon: Icons.call, color: color, label: 'CALL'),
          _ButtonCol(icon: Icons.near_me, color: color, label: 'ROUTE'),
          _ButtonCol(icon: Icons.share, color: color, label: 'SHARE'),
        ],
      ),
    );
  }
}

class _TextSection extends StatelessWidget {
  const _TextSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text('Ponyo is an adorable movie created by studio Ghibli.'
          'The main characters are a magical fish girl and a human boy who set off'
          'on an adventure to protect the village.\n'
          'Great family movie.',
        softWrap: true,
      )
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite(){
    setState(() {
      if(_isFavorite){
        _favoriteCount-=1;
        _isFavorite = false;
      }else{
        _favoriteCount+=1;
        _isFavorite = true;
      }
    });
  }
}




