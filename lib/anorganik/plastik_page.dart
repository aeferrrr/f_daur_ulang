import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: PlastikPage(),
  ));
}

class PlastikPage extends StatelessWidget {
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
      body: PlastikContent(),
    );
  }
}

class PlastikContent extends StatelessWidget {
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
                        'Sampah Plastik Menjadi Kreasi!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif kerajinan tas dari sampah plastik',
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
                                  'Ternyata, cara membuat kerajinan dari plastik deterjen tidak sulit dan hanya membutuhkan bahan-bahan sederhana...',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Ternyata, cara membuat kerajinan dari plastik deterjen tidak sulit dan hanya membutuhkan bahan-bahan sederhana. Berikut cara membuatnya \n\n1. Menyiapkan Alat dan Bahan Terlebih Dahulu \n\n Hal pertama yang harus kamu lakukan adalah menyiapkan semua bahan-bahan seperti: \n\n  - Plastik bekas kemasan Rinso berukuran besar \n  - Kain lap untuk membersihkan plastik bekas kemasan.\n  - Benang untuk menjahit beberapa bagian tas plastik.\n  - Gunting \n  - Kain polos \n  - Furing \n  - Ritsleting (opsional) \n\n2. Membersihkan Plastik Bekas Kemasan Sebelum Dipakai \n\nJika semua alat dan bahan sudah siap, Anda bisa mulai membersihkan plastik bekas kemasan Rinso. Bersihkan seluruh bagian dalamnya dengan kain lap lalu jemur sebentar di bawah sinar matahari.\n\n3. Mulai Memotong-motong Plastik Kemasan \n\nPlastik kemasan yang sudah dijemur sampai kering bisa langsung dipotong menjadi dua bagian. Kemudian, buatlah lipatan sejauh 3 cm pada ujung atas dan ujung bawah kemasan tersebut. Guntinglah lipatan-lipatan sebesar 3 cm untuk mendapatkan helai-helai plastik kecil. Anda bisa membuat 500 lipatan dari 50 bungkus plastik kemasan Rinso. \n\n4. Menganyam Potongan-Potongan Plastik \n\nCara membuat kerajinan dari plastik deterjen selanjutnya yang patut Anda lakukan adalah menganyam potongan-potongan plastik yang sudah dipotong-potong. Anyamlah potongan tersebut hingga bentuknya menyerupai baling-baling. Ujung anyaman harus berbentuk vertikal untuk mempermudah proses penggabungannya. \n\n5.Menggabungkan Anyaman-Anyaman Plastik  \n\nAnyaman-anyaman plastik yang sudah rapi tinggal disambungkan satu sama lain. Anda tinggal menyelipkan anyaman pada bagian vertikal anyaman lainnya. Proses ini harus dilakukan terus-menerus hingga anyaman berbentuk melingkar seperti kantung.\n\n6.Membuat Tali Tas dari Sisa Lipatan \n\nJika tas plastik sudah terbentuk sempurna, maka Anda bisa melanjutkan prosesnya dengan membuat tali tas. Manfaatkan sisa lipatan plastik yang sudah dianyam untuk membuat bentuk segitiga. Kemudian, hubungkan ujung segitiga dengan segitiga lainnya agar saling mengunci dan membentuk tali panjang. \n\n7. Menjahit Tali Agar Menyatu dengan Tas Plastik Anda bebas menentukan panjang tali sesuai kebutuhan dan selera. \n\nTali plastik yang sudah jadi bisa segera dijahit pada kedua ujung tas plastik. Pastikan bahwa jahitannya benar-benar kuat supaya tali tas tidak mudah sobek.\n\n8. Melapisi Bagian Dalam Tas dengan Furing Langkah terakhir dalam cara membuat kerajinan dari plastik deterjen berbentuk tas adalah melapisi bagian dalam tas dengan furing. \n\nPenggunaan furing akan membuat tas plastik lebih kuat karena terdiri dari lapisan ganda. Usahakan untuk memilih furing yang warnanya senada dengan plastik kemasan Rinso supaya tampak lebih eye catching. Anda juga bisa menambahkan ritsleting supaya tas dapat ditutup dengan sempurna.',
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
      initialVideoId: 'uEg40bX8rzc',
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
