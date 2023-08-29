import 'package:flutter_daur_ulang/util/my_button.dart';
import 'package:flutter_daur_ulang/util/my_list_tile.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daur_ulang/organik/organik_page.dart';

class OrganikPage extends StatefulWidget {
  const OrganikPage({super.key});

  @override
  State<OrganikPage> createState() => _organikState();
}

class _organikState extends State<OrganikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.blue[300],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue[300],
                    )),
              ],
            )),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(
          children: [
            // appbar
            Padding(
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
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            // cards
            Container(
              width: 380,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Sampah Organik',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                        'Seperti : sisa daun, buah, sayur dll.',
                        style: TextStyle(color: Colors.white),
                      ),
                      // card exprit
                      Image.asset(
                        'assets/organiccc.png',
                        width: 30,
                        height: 30,
                      ),
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
                  // 1buttons
                  MyButton(
                      iconImagePath: 'assets/recycling.png',
                      buttonText: 'Sampah Daun'),
                  MyButton(
                      iconImagePath: 'assets/compostable.png',
                      buttonText: 'Sampah Buah'),
                  MyButton(
                      iconImagePath: 'assets/organiccc.png',
                      buttonText: 'Sampah Sayur'),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // column -> stats transaction
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // statitics
                  MyListTile(
                      iconImagePath: 'assets/waste.png',
                      tileTitle: 'Sate ayam',
                      tileSubtitle: 'Sampah dan Daung'),
                  MyListTile(
                      iconImagePath: 'assets/vegetable.png',
                      tileTitle: 'Sate ayam',
                      tileSubtitle: 'Sampah dan Daung'),
                ],
              ),
            ),
          ],
        )));
  }
}
