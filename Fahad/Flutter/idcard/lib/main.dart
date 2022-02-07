import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ID()
));

class ID extends StatefulWidget {
  const ID({Key? key}) : super(key: key);

  @override
  State<ID> createState() => _IDState();
}

class _IDState extends State<ID> {

  int currentForm = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('Character Details'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentForm += 1;
          });
        },
          child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],

      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/scorpion.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.red[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Scorpion',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current Form',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.5
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$currentForm',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.green
                ),
                SizedBox(width: 5.0),
                Text(
                  'scorpion@mkx.com',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.grey
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
