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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
                          ),
                        ),
                        Text(
                          'Organik',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    // plus button
                    IconButton(
                      icon: Icon(Icons.arrow_back), // Use the arrow back icon
                      onPressed: () {
                        Navigator.pop(context); // Navigate back
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            // cards
            Container(
              width: 350,
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'adalah sampah alami yang mudah membusuk & mudah terurai secara alami. ',
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
                      iconImagePath: 'assets/recycling.png',
                      buttonText: 'Sampah Daun',
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
                      iconImagePath: 'assets/compostable.png',
                      buttonText: 'Sampah Kulit Telur',
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
                      iconImagePath: 'assets/organiccc.png',
                      buttonText: 'Sampah Batok Kelapa',
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
                padding: EdgeInsets.all(15),
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
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: MyListTile(
                              iconImagePath: 'assets/recycling.png',
                              tileTitle: 'Sampah Daun:',
                              tileSubtitle:
                                  'sampah daun bisa dijadikan \npupuk kompos yang\nbermanfaat.',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: MyListTile(
                              iconImagePath: 'assets/compostable.png',
                              tileTitle: 'Sampah Kulit Telur',
                              tileSubtitle: 'Sampah dan Daun',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: MyListTile(
                              iconImagePath: 'assets/compostable.png',
                              tileTitle: 'Sampah Batok Kelapa',
                              tileSubtitle: 'Sampah sayur digunakan',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
