import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:work_y/model.dart';
// import 'your_models_file.dart'; // Make sure to import your models

class ApiService {
  // Your custom API URL
  final String apiUrl = 'https://dummyjson.com/c/0ad8-fe79-4447-8b11';

  Future<HomeData> fetchHomeData() async {
    try {
      // 1. Make the GET request
      final response = await http.get(Uri.parse(apiUrl));

      // 2. Check if the request was successful
      if (response.statusCode == 200) {
        // 3. Decode the JSON response
        final Map<String, dynamic> jsonData = json.decode(response.body);

        // 4. Convert JSON lists to Dart Lists of Objects
        List<Freelancer> freelancersList = (jsonData['freelancers'] as List)
            .map((item) => Freelancer.fromJson(item))
            .toList();

        List<Post> postsList = (jsonData['posts'] as List)
            .map((item) => Post.fromJson(item))
            .toList();

        // 5. Return the combined data
        return HomeData(freelancers: freelancersList, posts: postsList);
      } else {
        throw Exception('Failed to load data. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching API: $e');
    }
  }
}