import 'package:flutter/material.dart';
class NextPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Layout'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Image.network(
              'https://example.com/your_image_url.jpg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second layout
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage1()),
                );
              },
              child: const Text('Go to Second Layout'),
            ),
            SizedBox(height: 16.0),

          ],
        ),
      ),
    );
  }
}
