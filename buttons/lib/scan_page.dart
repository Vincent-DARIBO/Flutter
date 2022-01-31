import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ScannerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanning'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/palmtree.jpg'), fit: BoxFit.cover)),
        child: LoadingIcon(),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pulse(
        infinite: true,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.brown[100],
          ),
          child: SizedBox(
            height: 60,
            child: Center(
              child: Text('Scanning'),
            ),
          ),
        ),
      ),
    );
  }
}
