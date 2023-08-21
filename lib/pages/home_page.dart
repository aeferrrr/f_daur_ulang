
import 'package:flutter/material.dart';
import 'package:flutter_daur_ulang/util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      
      body: SafeArea(
        child: Column(
          children: [
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
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
                            'Hallo, Pecinta Lingkungan!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '30 Aug, 2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // search bar
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
                          height: 5,
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

                  // Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Apa yang kamu rasakan hari ini?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
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
            ),

            SizedBox(
              height: 25,
            ),

            // 4 emoticon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // bad
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😀',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Smile',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                // fine
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😁',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Happy',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                // well
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😒',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '🙁',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Sad',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    // buat button
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Organik & Anorganik',
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

                      // listview
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Colors.green[200],
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Text(
                                  'Sampah Organik',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                // subtitle
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
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 8,
                      ),

                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Colors.deepPurple,
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Text(
                                  'Sampah Anorgnaik',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                // subtitle
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
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
