import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int _currentIndex = 0;

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // Menggunakan ListView agar kontennya bisa digulir
        children: [
          _buildCurvedAppBar(context),
          SizedBox(height: 10),
          _buildProfileImage(),
          SizedBox(height: 16),
          _buildProfileCard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildCurvedAppBar(BuildContext context) {
    return ClipPath(
      clipper: CustomAppBarClipper(),
      child: Container(
        height: 200,
        color: Colors.blue[800],
        child: Stack(
          // Menggunakan Stack untuk menambahkan tombol back
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back), // Use the arrow back icon
              onPressed: () {
                Navigator.pop(context); // Navigate back
              },
            ),
            Center(
              child: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildProfileImage() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/insa.png'),
         
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Colors.grey[150],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Justify ke kiri
            children: [
              Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Aplikasi INSA (Inovate Sampah) berbasis android adalah suatu aplikasi mobile android yang menjadi salah satu solusi masalah sampah yang ada di masyarakat dan secara tidak langsung aplikasi ini mempunyai nilai edukasi terhadap kepedulian akan lingkungan sehingga dapat menciptakan lingkungan yang bersih dan bebas dari sampah dan dapat meningkatkan ekonomi bagi masyarakat.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 4),
              Text(
                'Aplikasi ini dibangun untuk dapat mengetahui sampah yang dapat di daur ulang dan akan memberikan arahan cara mendaur ulang sampah tersebut. Terdapat dua pilihan sampah yaitu sampah organik dan anorganik. Selain itu aplikasi ini juga dilengkapi dengan tutorial cara mengolah sampah.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('images/youtube.png'),
                  Image.asset('images/instagram.png'),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutPage(),
  ));
}
