import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GreetingScreen(),
    );
  }
}

class GreetingScreen extends StatefulWidget {
  @override
  _GreetingScreenState createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    _setGreeting();
  }

  void _setGreeting() {
    var hour = DateTime.now().hour;
    if (hour >= 0 && hour < 12) {
      setState(() {
        _greeting = 'Selamat Pagi';
      });
    } else if (hour >= 12 && hour < 15) {
      setState(() {
        _greeting = 'Selamat Siang';
      });
    } else if (hour >= 15 && hour < 18) {
      setState(() {
        _greeting = 'Selamat Sore';
      });
    } else {
      setState(() {
        _greeting = 'Selamat Malam';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_greeting...'),
      ),
      body: Center(
        
      ),
    );
  }
}
