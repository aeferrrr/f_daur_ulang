import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: BotolPage(),
  ));
}

class BotolPage extends StatelessWidget {
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
      body: BotolContent(),
    );
  }
}

class BotolContent extends StatelessWidget {
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
                        'Botol Menjadi Kreasi!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif kerajinan mobil-mobilan dari sampah botol plastik',
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
                                  'Botol yang berubah menjadi pot bunga melalui sentuhan kreativitas tangan adalah sebuah karya seni yang menggabungkan fungsionalitas dan estetika dengan cara yang unik dan inovatif. ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Ullamco culpa labore mollit quis fugiat nisi ex pariatur...Nulla ea esse quis anim incididunt. Do minim velit tempor officia aliqua quis \n\n eiusmod dolor. Officia fugiat in sint et incididunt cupidatat reprehenderit mollit dolore sit nulla nulla deserunt eiusmod. Aliquip culpa sunt minim esse tempor ad ex ut occaecat elit est. Nulla elit consectetur ullamco officia sit enim proident adipisicing proident.'
                                  'Botol yang berubah menjadi pot bunga melalui sentuhan kreativitas tangan adalah sebuah karya seni yang menggabungkan fungsionalitas dan estetika dengan cara yang unik dan inovatif. Botol tersebut mengalami transformasi yang menakjubkan, berubah dari wadah yang biasa menjadi pot bunga yang menarik dan cantik, menampilkan potensi kreatif manusia untuk mengubah barang-barang sehari-hari menjadi sesuatu yang indah dan bermanfaat. \n\n Alat-alat yang dibutuhkan untuk membuat botol ini menjadi pot bunga mencakup: \n\n •	Botol Bekas: Sebagai bahan dasar yang akan diubah menjadi pot bunga. \n\n •	Peralatan Pemotong: Gergaji atau alat pemotong khusus untuk membentuk potongan di botol. \n\n •	Cat dan Kuas: Untuk mewarnai dan menghias botol.\n\n •	Tali Gantung: Jika ingin membuat pot bunga ini digantung. \n\n •	Peralatan Penataan Tanaman: Tanah, batu kerikil, tanaman, dan perlengkapan penanaman lainnya. \n\n •	Peralatan Keamanan: Sarung tangan, kacamata, dan perlindungan lainnya untuk menjaga keselamatan saat memotong dan mengolah botol.'
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
      initialVideoId: 'wivsgmT2vdg',
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
