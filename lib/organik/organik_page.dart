import 'package:flutter/material.dart';
import 'package:flutter_daur_ulang/anorganik/anorganik_page.dart';
import 'package:intl/intl.dart';

class OrganikPage extends StatefulWidget {
  const OrganikPage({super.key});

  @override
  State<OrganikPage> createState() => _OrganikPageState();
}

class _OrganikPageState extends State<OrganikPage> {
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
                            'Sampah Organik',
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
                            DateFormat('dd MMM, yyyy').format(
                                DateTime.now()),
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
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // merapihkan widget di antara ruang kosong yang tersedia
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // UNTUK TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sampah apa yang ingin anda ubah',
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
            SizedBox(height: 16),

            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(50),
              child: Row(
                children: [
                  // Tambahan widget lain dalam Row jika diperlukan
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // UNTUK EMOTICON

            // CONTAINER UTAMA
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(
                      20), // Melengkungkan sudut kontainer
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
                              'Organik',
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
                                builder: (context) => AnorganikPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: Color(0xFFa0e548),
                                  child: Icon(
                                    Icons.eco,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sampah Dedaunan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Sampah daun mudah terurai',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 8,
                      ),

                      // SAMPAH SAYURAN
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke halaman selanjutnya di sini
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnorganikPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: Color(0xFFf6c445),
                                    child: Icon(
                                      Icons.local_florist,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // title
                                  Text(
                                    'Sampah Sayuran',
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
                                    'Sampah sayuran mudah terurai',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
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
              ),
            ),

            // EXIT
          ],
        ),
      ),
    );
  }
}
