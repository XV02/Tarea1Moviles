import 'package:flutter/material.dart';

void main() => runApp(const Tarea1());

class Tarea1 extends StatefulWidget {
  const Tarea1({super.key});

  @override
  State<Tarea1> createState() => _Tarea1State();
}

class _Tarea1State extends State<Tarea1> {
  bool _isAccessibilityPressed = false;
  bool _isTimerPressed = false;
  bool _isPhoneAndroidPressed = false;
  bool _isPhoneIphonePressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First children is a round account icon with a title and a subtitle on the right
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('123 Main Street'),
                  Text('(415) 555-0198'),
                ],
              ),
              const SizedBox(height: 5, width: 10),
              // Third children is a row with 4 icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isAccessibilityPressed = !_isAccessibilityPressed;
                      });
                      // Show a snackbar when the icon is pressed with the _isAccessibilityPressed value
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Pressed Accessibility')));
                    },
                    icon: Icon(Icons.accessibility,
                        color: _isAccessibilityPressed
                            ? Colors.indigo
                            : Colors.black),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isTimerPressed = !_isTimerPressed;
                        });
                        // Show a snackbar when the icon is pressed
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Pressed Timer')));
                      },
                      icon: Icon(Icons.timer,
                          color:
                              _isTimerPressed ? Colors.indigo : Colors.black)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isPhoneAndroidPressed = !_isPhoneAndroidPressed;
                        });
                        // Show a snackbar when the icon is pressed
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Pressed Phone Android')));
                      },
                      icon: Icon(Icons.phone_android,
                          color: _isPhoneAndroidPressed
                              ? Colors.indigo
                              : Colors.black)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isPhoneIphonePressed = !_isPhoneIphonePressed;
                        });
                        // Show a snackbar when the icon is pressed
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Pressed Phone Iphone')));
                      },
                      icon: Icon(Icons.phone_iphone,
                          color: _isPhoneIphonePressed
                              ? Colors.indigo
                              : Colors.black)),
                ],
              ),
            ],
          )),
    );
  }
}
