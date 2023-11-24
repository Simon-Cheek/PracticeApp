import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(const MaterialApp(
      home: SimonCard(),
    ));

class SimonCard extends StatefulWidget {
  const SimonCard({super.key});

  @override
  State<SimonCard> createState() => _SimonCardState();
}

class _SimonCardState extends State<SimonCard> {
  int simonLevel = 0;
  int petCounter = 0;
  String petName = 'Cats';
  String petReference = 'Assets/cats.jpeg';

  void setPet() {
    petCounter++;
    if (petCounter % 2 == 0) {
      setState(() {
        petName = "Cats";
        petReference = 'Assets/cats.jpeg';
      });
      ;
    } else {
      setState(() {
        petName = "Dogs";
        petReference = "Assets/dogs.jpeg";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
      appBar: AppBar(
        title: Text('Simon Cheek, Composer'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 66, 71, 74),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setPet,
        backgroundColor: Colors.grey[800],
        child: Text('Pet'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 42.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('Assets/Simon.jpg'),
                  radius: 40.0,
                ),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Simon',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENTLY STUDYING AT:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'BYU',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'MAJOR / MINOR:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Music / Computer Science',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CATS OR DOGS:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  petName,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(petReference),
                    radius: 24.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'simon.cheek@yahoo.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
