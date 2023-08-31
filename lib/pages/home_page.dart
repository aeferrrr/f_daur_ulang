import 'package:flutter/material.dart';
import 'package:flutter_daur_ulang/anorganik/anorganik_page.dart';
import 'package:flutter_daur_ulang/organik/organik_page.dart';
import 'package:flutter_daur_ulang/pages/about_page.dart';
import 'package:flutter_daur_ulang/util/emoticon_face.dart';
import 'package:flutter_daur_ulang/vidio_lainnya.dart/screens/home_screen.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: SafeArea(
        child: ListView(
          children: [
            HeaderSection(),
            SizedBox(height: 25),
            EmoticonSection(),
            SizedBox(height: 15),
            RecyclingSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Hallo, Pecinta Lingkungan!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      DateFormat('dd MMM, yyyy').format(DateTime.now()),
                      style: TextStyle(color: Colors.blue[200]),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AboutPage(), // Ganti dengan halaman notifikasi yang diinginkan
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.person_2_sharp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 119, 61, 61),
                    ),
                    contentPadding: EdgeInsets.only(
                        right: 40), // Adjust this value as needed
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Apa yang kamu rasakan hari ini?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EmoticonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 1,
          child: EmoticonItem(emoticon: '😀', label: 'Smile'),
        ),
        Flexible(
          flex: 1,
          child: EmoticonItem(emoticon: '😁', label: 'Happy'),
        ),
        Flexible(
          flex: 1,
          child: EmoticonItem(emoticon: '😒', label: 'Bad'),
        ),
        Flexible(
          flex: 1,
          child: EmoticonItem(emoticon: '🙁', label: 'Sad'),
        ),
      ],
    );
  }
}

class EmoticonItem extends StatelessWidget {
  final String emoticon;
  final String label;

  const EmoticonItem({required this.emoticon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmoticonFace(emoticonFace: emoticon),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class RecyclingSection extends StatefulWidget {
  @override
  _RecyclingSectionState createState() => _RecyclingSectionState();
}

class _RecyclingSectionState extends State<RecyclingSection> {
  @override
  Widget build(BuildContext context) {
    double defaultPaddingBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      padding: EdgeInsets.fromLTRB(25, 25, 25, defaultPaddingBottom + 240),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    'Organik & Anorganik',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrganikPage()));
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFa0e548),
                      ),
                      child: Icon(
                        Icons.recycling,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sampah Organik',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Ada 2 contoh sampah organik',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnorganikPage()));
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFf6c445),
                      ),
                      child: Icon(
                        Icons.recycling,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sampah Anorganik',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Ada 2 contoh sampah Anorganik',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF9AC1F0),
                      ),
                      child: Icon(
                        Icons.other_houses_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kreasi Lainnya',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Berkreasilah dan menginspirasi!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
