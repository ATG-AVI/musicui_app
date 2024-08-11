import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/images/1.jpg',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'MY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'TURN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '99 podcasts - 1234 followers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'My name is Aviral, I study at SRM Institute of Science and Technology and am in my 2nd year pursuing B.Tech in CSE with a specialization in Big Data Analytics.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.share, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.shuffle, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.play_arrow, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSongTile(
                    'lib/images/1.jpg',
                    'Wack we A wack',
                    'Aviral',
                    '3:45',
                  ),
                  _buildSongTile(
                    'lib/images/2.jpg',
                    'Major Lazer',
                    'Daksh Bhaiya',
                    '4:12',
                  ),
                  _buildSongTile(
                    'lib/images/3.jpg',
                    'Doh Wanna Go Bad',
                    'Shinjan Bhaiya',
                    '2:56',
                  ),
                  _buildSongTile(
                    'lib/images/4.jpg',
                    'No Problem',
                    'Bhushan Bhaiya',
                    '3:21',
                  ),
                  _buildSongTile(
                    'lib/images/5.jpg',
                    'Etana wanna go bad',
                    'Vedant',
                    '4:05',
                  ),
                  _buildSongTile(
                    'lib/images/6.jpg',
                    'Major Lazer',
                    'Anish',
                    '3:33',
                  ),
                  _buildSongTile(
                    'lib/images/7.jpg',
                    'Doh Wanna Go Bad',
                    'Vedant',
                    '3:40',
                  ),
                  _buildSongTile(
                    'lib/images/8.jpg',
                    'Wack we A wack',
                    'Anish',
                    '2:50',
                  ),
                  _buildSongTile(
                    'lib/images/9.jpg',
                    'Etana wanna go bad',
                    'Shinjan Bhaiya',
                    '3:15',
                  ),
                  _buildSongTile(
                    'lib/images/10.jpg',
                    'No Problem',
                    'Daksh Bhaiya',
                    '4:00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSongTile(
      String imagePath, String songTitle, String artistName, String time) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          title: Text(
            songTitle,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            artistName,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 8),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
        Divider(
          color: Colors.grey[700],
          thickness: 0.5,
        ),
      ],
    );
  }
}
