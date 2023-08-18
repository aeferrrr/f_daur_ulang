import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/oke.jpg'), // Ganti dengan path gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan aksi ketika tombol pertama ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color.fromARGB(255, 50, 248, 153),
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_3_trianglepath,
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
                    backgroundColor: Color.fromARGB(255, 50, 248, 153),
                  ),
                  child: Icon(
                    Icons.delete,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CarouselSlider(
              items: [
                Image.asset('images/asik.png'),
                Image.asset('images/testing3.jpg'),
                Image.asset('images/testing2.jpg'),
              ],
              options: CarouselOptions(
                height: 350.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
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
