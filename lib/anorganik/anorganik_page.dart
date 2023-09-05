import 'package:flutter_daur_ulang/anorganik/botol_page.dart';
import 'package:flutter_daur_ulang/anorganik/kardus_page.dart';
import 'package:flutter_daur_ulang/anorganik/plastik_page.dart';
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
                          'Anorganik',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    // plus button
                    IconButton(
                      icon: Icon(
                          Icons.arrow_back_ios_new), // Use the arrow back icon
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
                        MaterialPageRoute(builder: (context) => PlastikPage()),
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
                        MaterialPageRoute(builder: (context) => KardusPage()),
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: MyListTile(
                              iconImagePath: 'images/trash-bin.png',
                              tileTitle: 'Sampah Botol',
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: MyListTile(
                              iconImagePath: 'images/degradable-plastic.png',
                              tileTitle: 'Sampah Plastic ',
                              tileSubtitle:
                                  'Sampah plastic kreasi \ndari tangan',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: MyListTile(
                              iconImagePath: 'images/recycle-packaging.png',
                              tileTitle: 'Sampah Kardus',
                              tileSubtitle: 'Sampah kardus bisa\ndaur ulang',
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
