import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post_model.dart';

class PostProvider extends ChangeNotifier {
  List<Post> posts = [];
  bool isLoading = false;

  Future<void> fetchPosts() async {
    isLoading = true;
    notifyListeners();

    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      posts = jsonData.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }

    isLoading = false;
    notifyListeners();
  }
}
