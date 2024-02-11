import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Mc Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            //The container must be the size of the elements inside
            width: 400,
            height: 150,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First children is a round account icon with a title and a subtitle on the right
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // The account icon
                  Icon(Icons.account_circle, size: 50, color: Colors.black),
                  // The title and subtitle
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      'Flutter McFlutter',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Experienced App Developer',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ])
                ]),
                // Second children is a row with two words
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('123 Main Street'),
                    Text('(415) 555-0198'),
                  ],
                ),
                // Third children is a row with 4 icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.accessibility),
                    Icon(Icons.timer),
                    Icon(Icons.phone_android),
                    Icon(Icons.phone_iphone),
                  ],
                ),
              ],
            )
            // The container must have a black border

            ),
      ),
    );
  }
}
