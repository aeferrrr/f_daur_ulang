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
      body: Column(
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
        color: Colors.deepPurple[800], // Gunakan warna solid sebagai latar belakang
        child: Center(
          child: Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildProfileImage() {
    return Container(
      width: 220,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/insa.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Card(
      color: Colors.deepPurple[800],
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(4), // Melengkung pada ujung bawah kiri
        ),
      ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'INSA',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sebuah App yang menyajikan informasi bagi pengguna',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(height: 40),
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
