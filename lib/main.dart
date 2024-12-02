import 'package:flutter/material.dart';

class AffirmationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image1.jpg",
            height: 194,
            width: 600,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10), // Space between image and text
          Text(
            "Affirmation Title",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
class AffirmationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AffirmationCard(),
        AffirmationCard(),
        AffirmationCard(),
      ],
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Affirmation List'),
      ),
      body: AffirmationList(), // Add the AffirmationList here
    ),
  ));
}
