import 'package:flutter/material.dart';

class DaunPage extends StatefulWidget {
  const DaunPage({super.key});

  @override
  State<DaunPage> createState() => _DaunPageState();
}

class _DaunPageState extends State<DaunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}