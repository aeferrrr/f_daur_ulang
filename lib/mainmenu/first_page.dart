import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol pertama ditekan
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(40),
                shape: RoundedRectangleBorder(
                  // Menggunakan RoundedRectangleBorder untuk membuat kotak
                  borderRadius: BorderRadius.circular(5), // Sudut tidak bulat
                ),
                backgroundColor: const Color.fromARGB(255, 231, 115, 106),
              ),
              child: Icon(
                Icons.delete,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 40),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol kedua ditekan
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: const Color.fromARGB(255, 231, 115, 106),
              ),
              child: Icon(
                Icons.delete,
                size: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
        
      ),
      
    );
    
  }
}

void main() {
  runApp(MaterialApp(home: Scaffold(body: FirstPage())));
}
