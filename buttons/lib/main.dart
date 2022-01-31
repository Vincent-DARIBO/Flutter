import 'package:flutter/material.dart';
import 'scan_page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Network Scanner'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/flutter.jpg"), fit: BoxFit.cover)),
        child: ButtonMain(),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ButtonMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedB1('Scan Bluetooth', Icons.bluetooth),
          ElevatedB1('Scan Wifi', Icons.wifi),
        ],
      ),
    );
  }
}

class ElevatedB1 extends StatelessWidget {
  ElevatedB1(this.title, this.icon);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScannerPage()));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        ),
        icon: Icon(icon),
        label: Text(this.title),
      ),
    );
  }
}
