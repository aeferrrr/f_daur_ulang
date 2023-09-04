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
                        'Sampah Plastik Menjadi Kreasi!',
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
                                  'Botol yang berubah menjadi pot bunga melalui sentuhan kreativitas tangan adalah sebuah karya seni yang menggabungkan fungsionalitas dan estetika dengan cara yang unik dan inovatif.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: Text(
                                  'Botol yang berubah menjadi pot bunga melalui sentuhan kreativitas tangan adalah sebuah karya seni yang menggabungkan fungsionalitas dan estetika dengan cara yang unik dan inovatif. Botol tersebut mengalami transformasi yang menakjubkan, berubah dari wadah yang biasa menjadi pot bunga yang menarik dan cantik, menampilkan potensi kreatif manusia untuk mengubah barang-barang sehari-hari menjadi sesuatu yang indah dan bermanfaat. \n\n Alat-alat yang dibutuhkan : \n •	Botol Bekas: Sebagai bahan dasar yang akan diubah menjadi pot bunga. \n •	Peralatan Pemotong: Gergaji atau alat pemotong khusus untuk membentuk potongan di botol. \n •	Cat dan Kuas: Untuk mewarnai dan menghias botol.\n •	Tali Gantung: Jika ingin membuat pot bunga ini digantung. \n •	Peralatan Penataan Tanaman: Tanah, batu kerikil, tanaman, dan perlengkapan penanaman lainnya. \n •	Peralatan Keamanan: Sarung tangan, kacamata, dan perlindungan lainnya untuk menjaga keselamatan saat memotong dan mengolah botol. \n\n Langkah-langkah Membuatnya : \n\n 1. Siapkan Botol Plastik: \nCuci dan keringkan botol plastik bekas dengan baik. Pastikan tidak ada sisa-sisa cairan atau benda asing di dalamnya. \n\n 2. Tentukan Tinggi Pot: \nTentukan tinggi pot bunga yang Anda inginkan dan tandai pada botol plastik dengan menggunakan marker atau pena. Anda dapat   memotong botol di bagian atas untuk membuat pot lebih pendek atau memotong di tengah untuk membuatnya lebih tinggi. \n\n3. Potong Botol: \nPotong botol sesuai dengan tanda yang Anda buat. Anda bisa menggunakan gunting atau pisau tajam untuk melakukan ini. Pastikan potongan rapi dan tidak tajam. \n\n4. Buat Drainase: \nPotong lubang kecil di bagian bawah pot untuk memungkinkan air berlebihan keluar. Ini penting agar tanaman Anda tidak tergenang air. \n\n5. Hias Pot (Opsional): \nAnda dapat menghias pot dengan cat, stiker, atau bahan hiasan lainnya untuk memberikan tampilan yang lebih menarik. \n\n6. Tambahkan Tanah dan Tanaman: \nIsi pot dengan tanah pot atau campuran tanah yang sesuai dengan tanaman yang ingin Anda tanam. Tancapkan tanaman tersebut ke dalam tanah dengan lembut. \n\n7. Perawatan: \nSetelah menanam tanaman, pastikan untuk merawatnya dengan baik. Berikan air sesuai kebutuhan tanaman dan letakkan pot di tempat yang sesuai dengan kebutuhan cahaya tanaman tersebut.\n\nAnda sekarang telah berhasil membuat pot bunga dari botol plastik bekas. Ini adalah cara yang ramah lingkungan untuk menghias rumah Anda dan memberikan rumah baru untuk tanaman-tanaman yang Anda cintai. Pastikan untuk memperhatikan kebutuhan perawatan masing-masing tanaman agar tetap sehat dan tumbuh dengan baik.',
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
