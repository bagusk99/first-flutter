import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            //1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Testing Judul',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Testing Isi',
                  style: TextStyle(
                    color: Colors.grey[400]
                  )
                )
              ],
            )
          ),
          //3
          Icon(
            Icons.star,
            color: Colors.red[400]
          ),
          Text('100')
        ],
      )
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Call'),
          _buildButtonColumn(color, Icons.near_me, 'Route'),
          _buildButtonColumn(color, Icons.share, 'Share'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Apps',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection
          ]
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            )
          ),
        )
      ],
    );
  }
}
