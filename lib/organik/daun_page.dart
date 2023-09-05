import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DaunPage extends StatefulWidget {
  const DaunPage({super.key});

  @override
  State<DaunPage> createState() => _DaunPageState();
}

class _DaunPageState extends State<DaunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
         body: DaunContent(),
    );
  }
}

class DaunContent extends StatelessWidget {
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
                        'Sampah Daun Menjadi Pupuk Kompos!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif Membuat Pupuk Kompos dari Sampah Dedaunan',
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
                                  'Sering kita lihat banyak sampah di sekeliling kita. Daripada dibiarkan, maka lebih baik jika mengolahnya jadi sesuatu yang bermanfaat, kan. Salah satunya dengan membuat kompos ini...',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Sering kita lihat banyak sampah di sekeliling kita. Daripada dibiarkan, maka lebih baik jika mengolahnya jadi sesuatu yang bermanfaat, kan. Salah satunya dengan membuat kompos ini. \n\nMeskipun hanya dari bahan sederhana, namun pupuk kompos ini banyak khasiatnya lho bagi tanaman. Wah, pasti jadi semakin penasaran. Kalau begitu, langsung saja simak ulasan mengenai cara pembuatannya berikut ini. \n\n Bahan yang diperlukan : \n 1. Sampah daun (Basah / Kering / Hijau) \n 2. Air 1 Gembor \n 3. EM4 (1 tutup botol) \n 4. Gula  2 sendok makan  \n\n Alat yang digunakan : \n 1. Terpal untuk Alas pencacahan daun-daun \n 2. Caluk/ Golok/ Celurit \n 3. Kayu balok \n 4. Kursi kecil \n 5. Gembor \n 6. Karung \n 7. Tali Rafia \n 8. Jarum jahit besar \n\n Proses yang dilakukan : \n 1. Sediakan sampah-sampah daun yang kering atau basah, hijau atau kuning, yang penting sampah organik. \n 2. Cacah sampah daun tersebut menjadi ukuran sekitar 2 cm agar mempercepat proses fermentasi \n 3. Setelah semua proses pencacahan selesai, siap kan air bersih, dan tuangkan dalam gembor \n 4. Masukkan gula 2 sendok makan kedalam air dan diaduk sampai rata \n 5. Tuangkan satu tutup botol EM4 kedalam air yang bercampur gula tadi dan diaduk sampai rata \n 6. Diamkan selama setengah jam agar bakteri dalam EM4 menjadi hidup. \n 7. Siram Air EM4 ke sampah-sampah daun sampai merata \n 8. Masukkan sampah daun ke dalam karung \n 9. Simpan di tempat yang tidak terkena hujan dan sinar matahari selama 3 bulan agar proses fermentasi berjalan sempurna \n 10. Agar lebih sempurna, tutuplah sampah dalam karung dengan terpal atau plastik.',
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
      initialVideoId: 'v-tyyxF46cE',
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
