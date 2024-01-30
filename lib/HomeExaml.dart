import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ApiHelper.dart';
import 'package:untitled/Place.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  ApiHelper apiHelper = ApiHelper();
  List<Place> places = [];

  @override
  void initState() {
    super.initState();
    loadPlaces();
  }
  Future<void> loadPlaces() async {
    try {
      List<Place> loadedPlaces = await apiHelper.getAllPlaces();
      setState(() {
        places = loadedPlaces;
      });
    } catch (e) {
      print('Error loading places: $e');
    }
  }
  // Placeholder data for the list

  // Placeholder data for tabs
  List<String> tabs = ['Tab 1', 'Tab 2', 'Tab 3'];

  String selectedTab = 'Tab 1'; // Initial selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Text(
                'Header Section',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              // Search Input
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),

              // Horizontal Tab Menu
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: tabs.map((tab) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = tab;
                          // Add logic to update the UI based on the selected tab
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: tab == selectedTab ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.only(right: 12),
                        child: Text(
                          tab,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              // List of Items with image
              SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: places.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        // Image
                        Image.asset(
                          places[1].name,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}