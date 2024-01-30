import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/Place.dart';

class ApiHelper {
  Future<List<Place>> getAllPlaces() async {
    final response = await http.get(Uri.parse('http://localhost:8080/Place'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      List<dynamic> data = json.decode(response.body);
      List<Place> places = data.map((json) => Place.fromJson(json)).toList();
      for(int i=0 ;i<places.length ;i++){
        print(places[i]);
      }
      return places;
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load places');
    }
  }
}
