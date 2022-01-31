import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(
          'premier test',
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Body(),
      backgroundColor: Colors.green[100],
      floatingActionButton: Button(),
    ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Step 2 : prise en main des fonts, et des stateless widgets',
        style: TextStyle(
          fontSize: 16.0,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text(
        'bouton',
        style: TextStyle(
          color: Colors.tealAccent[400],
          fontSize: 10.0,
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
