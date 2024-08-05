import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
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
            icon: Icon(Icons.more_vert, color: Colors.white),
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
                  Text(
                    'Trending Songs',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Songs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Total songs: 30 songs',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          iconSize: 38,
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          iconSize: 38,
                          icon: Icon(Icons.shuffle, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          iconSize: 38,
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
              child: Container(
                color: Color.fromARGB(255, 11, 11, 11),
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
                      '2:58',
                    ),
                    _buildSongTile(
                      'lib/images/4.jpg',
                      'No Problem',
                      'Bhushan Bhaiya',
                      '3:30',
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
                      '3:50',
                    ),
                    _buildSongTile(
                      'lib/images/7.jpg',
                      'Doh Wanna Go Bad',
                      'Vedant',
                      '2:45',
                    ),
                    _buildSongTile(
                      'lib/images/8.jpg',
                      'Wack we A wack',
                      'Anish',
                      '3:15',
                    ),
                    _buildSongTile(
                      'lib/images/9.jpg',
                      'Etana wanna go bad',
                      'Shinjan Bhaiya',
                      '4:00',
                    ),
                    _buildSongTile(
                      'lib/images/10.jpg',
                      'No Problem',
                      'Daksh Bhaiya',
                      '3:25',
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

  Widget _buildSongTile(
      String imagePath, String songTitle, String artistName, String duration) {
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
                duration,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 16),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.1,
        ),
      ],
    );
  }
}
