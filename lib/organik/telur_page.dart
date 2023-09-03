import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TelurPage extends StatefulWidget {
  const TelurPage({super.key});

  @override
  State<TelurPage> createState() => _TelurPageState();
}

class _TelurPageState extends State<TelurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
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
                        'Sampah Kulit Telur Menjadi Kolase Ikan!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ide kreatif Membuat Kolase Ikan dari Kulit Telur',
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
                                  'Yuk Bun, Ajak Anak Membuat Kolase dari Kulit Telur! Kulit telur ternyata bisa lho Bund dimanfaatkan untuk berkreasi bersama anak-anak di rumah...',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Yuk Bun, Ajak Anak Membuat Kolase dari Kulit Telur! Kulit telur ternyata bisa lho Bund dimanfaatkan untuk berkreasi bersama anak-anak di rumah. \n\nDaripada mereka bermain gadget, mengajak mereka memanfaatkan bahan-bahan rumah yang tidak terpakai bisa menjadi hal yang mengasyiknya.Kali ini kita akan mengajak bunda dan anak untuk membuat kolase dari kulit telur, simak caranya ya : \n\nBahan-bahan yang perlu disiapkan : \n\n• 4 kulit telur \n• Lem \n• Cat air \n• Cutton but \n• Kertas bergambar bebas  \n\nCara Membuatnya : \n\n1. Cuci kulit telur dengan sabun supaya tidak berbau amis, kemudian bilas menggunakan air bersih. Jemur kulit telur di bawah sinar matahari selama kurang lebih 1 jam sampai benar-benar kering.\n\n2. Kupas kulit air, agar mudah saat memberi lem nantinya.\n\n3. Setelah kita mempersiapkan kulit telur. Kini saatnya untuk mulai membuat kolase.\n\n4.Balur lem menggunakan cutton bud di area kertas yang bergambar. Misal, bunda telah menyiapkan kertas dengan gambar rumah. Maka balur lem pada gambar rumah tersebut.\n\n5. Bunda mungkin bisa mengarahkan anak untuk membalurkan lem sedikit demi sedikit diarea bergambar. Diselingi dengan menempelkan kulit telur yang sudah dipotong kecil-kecil di atas lem, supaya lem di kertas tidak kering terlebih dahulu.\n\n6. Jika seluruh gambar telah tertutupi dengan kulit telur, maka kolase telah terbentuk. Namun, agar lebih cantik Bunda dan anak bisa memberinya cat air sesuai dengan selera warnanya.\n\n7. Tunggu sampai cat air kering dan selesai.\n\nGimana Bund, mudah bukan? Ajak selalu anak berkreasi dengan memanfaatkan bahan-bahan rumah tangga yang tidak terpakai ya Bund. Di samping melatih motorik anak, kita juga bisa mengurangi penumpukan sampah.' ,
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
      initialVideoId: 'OPRUUFGZvFU',
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
