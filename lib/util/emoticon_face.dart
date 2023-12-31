import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace; // Ubah ke camel case

  const EmoticonFace({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Text(
        emoticonFace,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
