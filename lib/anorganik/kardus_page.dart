import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: KardusPage(),
  ));
}

class KardusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: KardusContent(),
    );
  }
}

class KardusContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Kardus Bekas Menjadi Kreasi!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif membuat kardus bekas menjadi mesin atm',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(2),
              height: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FullScreenPlayer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(2),
              child: ExpandableNotifier(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1),
                              Text(
                                'Deskripsi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Expandable(
                                collapsed: Text(
                                  'Membuat mesin ATM mainan dari kardus adalah proyek kreatif yang aman dan edukatif untuk anak-anak. Ini adalah cara yang bagus untuk mengajarkan konsep dasar perbankan dan pengelolaan uang kepada mereka.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Membuat mesin ATM mainan dari kardus adalah proyek kreatif yang aman dan edukatif untuk anak-anak. Ini adalah cara yang bagus untuk mengajarkan konsep dasar perbankan dan pengelolaan uang kepada mereka. Berikut adalah panduan langkah demi langkah untuk membuat mesin ATM mainan dari kardus:\n\nBahan yang Anda butuhkan:\n1. Sebuah kotak kardus besar.\n2. Gunting.\n3. Cat atau spidol.\n4. Kertas dan stiker warna-warn.\n5. Jarum pentul.\n6. Lem (opsional).\n7. Pita pengukur (opsional).\n\nLangkah-langkah:\n1. Siapkan kotak kardus Anda:\n - Tutup kotak kardus dan pastikan itu dalam kondisi baik.\n- Potong bagian atas kotak (tutup) sehingga Anda dapat melihat ke dalam kotak dengan mudah. Ini akan menjadi layar mesin ATM.\n\n2. Desain layar:\n - Gunakan cat atau spidol untuk menggambar tampilan ATM pada bagian dalam tutup kotak. Anda dapat menggambar gambar seperti slot kartu ATM, layar sentuh, tombol, dan antarmuka pengguna lainnya. Gunakan imajinasi Anda dan tambahkan detail sesuai keinginan.\n\n3. Buat slot kartu ATM:\n - Potong lubang kecil pada salah satu sisi kotak untuk membuat slot kartu ATM. Pastikan slotnya cukup besar untuk memasukkan kartu mainan dengan mudah.\n\n4. Tambahkan tombol:\n - Gunakan potongan kertas atau stiker warna-warni untuk membuat tombol-tombol di sekitar layar ATM. Anda dapat menambahkan tombol angka, tombol penarikan, dan tombol lainnya.\n\n5. Tambahkan stiker atau gambar untuk dekorasi:\n - Hiasi kotak kardus Anda dengan stiker atau gambar yang relevan dengan mesin ATM.\n\n6. Buat rekening mainan:\n - Potong potongan kertas berbentuk kartu ATM yang dapat digunakan sebagai "kartu rekening" mainan. Anda bisa memberi warna atau menambahkan stiker pada kartu-kartu ini.\n\n7. Buat saldo mainan:\n - Tambahkan "saldo" mainan dalam bentuk uang kertas palsu atau koin mainan di dalam kotak. Ini bisa digunakan untuk bermain peran bertransaksi di mesin ATM.\n\n8. Anda bisa menambahkan pita pengukur di sekitar layar ATM untuk memberikan tampilan yang lebih realistis.\n\n9. selesai',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  var controller =
                                      ExpandableController.of(context);
                                  return TextButton(
                                    onPressed: () {
                                      controller.toggle();
                                    },
                                    child: Text(
                                      controller!.expanded
                                          ? "Sembunyikan"
                                          : "Selengkapnya",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class FullScreenPlayer extends StatefulWidget {
  const FullScreenPlayer({Key? key}) : super(key: key);

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {
  bool _isFullScreen = false;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'JYG4MS-tsck',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isFullScreen = !_isFullScreen;
            });
          },
          child: Container(
            color: Colors.amber,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(1),
            height: _isFullScreen ? MediaQuery.of(context).size.height : 225,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
          ),
        ),
        if (_isFullScreen)
          Positioned.fill(
            child: InkWell(
              onTap: () {
                setState(() {
                  _isFullScreen = false;
                });
              },
              child: Container(
                color: Color.fromARGB(0, 238, 238, 238),
                child: Center(
                  child: Icon(
                    Icons.fullscreen_exit,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
