import 'package:flutter_daur_ulang/pages/about_page.dart';
import 'package:flutter_daur_ulang/pages/home_page.dart';
import 'package:flutter_daur_ulang/util/my_button.dart';
import 'package:flutter_daur_ulang/util/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daur_ulang/organik/daun_page.dart';
import 'package:flutter_daur_ulang/organik/telur_page.dart';
import 'package:flutter_daur_ulang/organik/kelapa_page.dart';

class OrganikPage extends StatefulWidget {
  const OrganikPage({super.key});

  @override
  State<OrganikPage> createState() => _organikState();
}

class _organikState extends State<OrganikPage> {
  int _currentIndex = 0;
   final List<Widget>pages= [HomePage(), AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(
          children: [
            // appbar
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sampah',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Organik',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                    // plus button
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            // cards
            Container(
              width: 370,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sampah Organik',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'adalah jenis sampah alami yang mudah membusuk & mudah terurai secara alami oleh mikroorganisme menjadi kompos.sampah organik basah (sisa buah-buahan dan sayur-sayuran), dan yang kedua sampah organik kering (daun, kertas, kayu, dsb) ',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 28,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // card number
                      Text(
                        'Seperti : sisa daun, kulit telur, batok kelapa dll.',
                        style: TextStyle(color: Colors.white),
                      ),
                      // card exprit
                      Icon(
                        Icons.recycling,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            // 3 buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Button 1
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DaunPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/dry.png',
                      buttonText: 'Daun Kering',
                    ),
                  ),

                  // Button 2
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelurPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/broken.png',
                      buttonText: 'Cangkang Telur',
                    ),
                  ),

                  // Button 3
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KelapaPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/coconut.png',
                      buttonText: 'Batok Kelapa',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 105,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: MyListTile(
                              iconImagePath: 'assets/dry.png',
                              tileTitle: 'Sampah Daun Kering',
                              tileSubtitle: 
                                  'sampah daun bisa dijadikan \npupuk kompos yang\nbermanfaat.',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 105,
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: MyListTile(
                              iconImagePath: 'assets/broken.png',
                              tileTitle: 'Sampah Cangkang Telur',
                              tileSubtitle:
                                  'pengolahan limbah\ncangkang telur menjadi\npupuk organik.',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 105,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: MyListTile(
                              iconImagePath: 'assets/coconut.png',
                              tileTitle: 'Sampah Batok Kelapa',
                              tileSubtitle:
                                  'asap cair dari batok kelapa\ndapat dijadikan sebagai\npengawet alami pada ikan',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
