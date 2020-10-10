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
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500]
                  )
                )
              ],
            )
          ),
          //3
          Icon(
            Icons.star,
            color: Colors.red
          ),
          Text('41')
        ],
      )
    );

    return MaterialApp(
      title: 'Flutter Apps',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang'),
        ),
        body: Column(
          children: [
            titleSection
          ]
        )
      ),
    );
  }
}
