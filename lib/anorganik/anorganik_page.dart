import 'package:flutter_daur_ulang/anorganik/botol_page.dart';
import 'package:flutter_daur_ulang/anorganik/kaleng_page.dart';
import 'package:flutter_daur_ulang/anorganik/plastik_page.dart';
import 'package:intl/intl.dart';
import 'package:flutter_daur_ulang/util/my_button.dart';
import 'package:flutter_daur_ulang/util/my_list_tile.dart';
import 'package:flutter/material.dart';

class AnorganikPage extends StatefulWidget {
  const AnorganikPage({super.key});

  @override
  State<AnorganikPage> createState() => _AnorganikPageState();
}

class _AnorganikPageState extends State<AnorganikPage> {
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
                    'Sampah Anorganik',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Sampah anorganik merupakan sampah yang sifatnya lebih sulit diurai. ',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 28,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Sampah Anorganik',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(height: 8),
                          Text(
                            DateFormat('dd MMM, yyyy').format(DateTime.now()),
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                              context); // Kembali ke halaman sebelumnya
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // SEARCH BAR
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // UNTUK TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // card number
                      Text(
                        'Seperti : botol,plastic dan kardus.',
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
                        MaterialPageRoute(builder: (context) => BotolPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/bottle.png',
                      buttonText: 'Sampah Botol',
                    ),
                  ),

                  // Button 2
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BotolPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/recycled-plastic.png',
                      buttonText: 'Sampah Plastic',
                    ),
                  ),

                  // Button 3
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlastikPage()),
                      );
                    },
                    child: MyButton(
                      iconImagePath: 'assets/box.png',
                      buttonText: 'Sampah Kardus',
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
                              iconImagePath: 'images/trash-bin.png',
                              tileTitle: 'Sampah Botol:',
                              tileSubtitle:
                                  'sampah botol bisa dijadikan \nmedia tanam.',
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
                              iconImagePath: 'images/degradable-plastic.png',
                              tileTitle: 'Sampah Plastic ',
                              tileSubtitle: 'Sampah plastic kreasi \n dari tangan',
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
                              iconImagePath: 'images/recycle-packaging.png',
                              tileTitle: 'Sampah Kardus',
                              tileSubtitle: 'Sampah kardus bisa daur ulang',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/card1.png',
                    height: 80,
                    width: 80,
                  )
                  // Tambahan widget lain dalam Row jika diperlukan
                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),
            // CONTAINER UTAMA
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                      10), // Melengkungkan sudut kontainer
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Anorganik',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          // Widget lainnya di sini
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke halaman selanjutnya di sini
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BotolPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Color(0xFFa0e548),
                                  child: Icon(
                                    Icons.wine_bar_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sampah Botol',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Botol bisa di daur ulang',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke halaman selanjutnya di sini
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlastikPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Color.fromARGB(255, 255, 162, 48),
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sampah Plastik',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Plastik bisa di daur ulang',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke halaman selanjutnya di sini
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KalengPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Color.fromARGB(255, 9, 124, 255),
                                  child: Icon(
                                    Icons.local_drink,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kaleng Bekas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Kaleng bisa di daur ulang',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                      ),
                    ],

                ),
              ),
            )
          ],
        )));
  }
}

