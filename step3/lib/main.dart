import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 3 : learning how to put images'),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Image.asset(
          'assets/moon.jpg'
          ),
      ),
      floatingActionButton: Button(),
      backgroundColor: Colors.black,
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text("click"),
      onPressed: () {},
      backgroundColor: Colors.white70,
    );
  }
}
