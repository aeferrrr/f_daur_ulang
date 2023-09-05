import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class KelapaPage extends StatefulWidget {
  const KelapaPage({super.key});

  @override
  State<KelapaPage> createState() => _KelapaPageState();
}

class _KelapaPageState extends State<KelapaPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.blue[800],
         body: TelurContent(),
    );
  }
}

class TelurContent extends StatelessWidget {
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
                        'Sampah Tempurung Kelapa Menjadi Sendok!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif Membuat Sendok dari Tempurung Kelapa',
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
                                  'Sendok adalah alat yang digunakan manusia untuk menikmati hidanngan di depannya. Sendok biasanya terbuat dari besi atau alumunium. Nah akan tetapi dahulu ia masih tebuat dari tanah liat atau kayu....',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Sendok adalah alat yang digunakan manusia untuk menikmati hidanngan di depannya. Sendok biasanya terbuat dari besi atau alumunium. Nah akan tetapi dahulu ia masih tebuat dari tanah liat atau kayu. \n\nSekarang sendok yang terbuat dari tanah liat atau kayu sudah susah sekali ditemui. Namun kita bisa lho membuatnya sendiri. Buatnya dari Batok kelapa. \n\nBaiklah, ingin tahu cara pembuatannya bagaimana? Yuk simak dibawah proses pembuatannya. Alat dan Bahan dalam Membuat Sendok dari Bongkahan Kelapa. \n\nBerikut adalah alat dan bahannya: \n\n1. Batok kelapa kecil \n2. Stik bentuknya seperti diatas. \n3. Lem kayu \n4. Spidol \n5. Penggaris \n6. Gergaji kecil \n7. Vernis \n\nLangkah-langkah dalam Membuat Sendok dari Tempurung Kelapa: \n\n1. Pemotongan Batok Kelapa: \nPotong batok kelapa menjadi bentuk sendok makan dengan menggunakan gergaji kayu. Buat bentuk yang mirip dengan sendok makan, dengan bagian yang melengkung sebagai wadahnya dan pegangan yang lebih panjang. \n\n2. Kasarkan Permukaan: \nKasarkan permukaan batok kelapa yang telah dipotong dengan kertas pasir untuk menghaluskan tepinya. Anda bisa menghaluskan baik bagian wadah maupun pegangan sendok. \n\n3.Cat (Opsional): \nJika Anda ingin memberi warna pada sendok makan, Anda bisa menggunakan cat dan kuas untuk melukisnya sesuai selera Anda. Biarkan cat mengering dengan baik sebelum digunakan. \n\n4. Pemakaian: \nSendok makan dari batok kelapa siap digunakan untuk makanan dan minuman. Pastikan sendok telah dibersihkan dengan baik sebelum digunakan. \n\nSelamat mencoba membuat sendok makan ramah lingkungan dari batok kelapa! Ini adalah alternatif yang baik untuk mengurangi penggunaan plastik dan bahan-bahan sekali pakai.' ,
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
      initialVideoId: 'TL8oTqUzXdA',
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
