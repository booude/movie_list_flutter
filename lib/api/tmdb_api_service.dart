import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';

String _baseUrl = dotenv.env['BASE_URL'] ?? '';
String _apiKey = dotenv.env['TMDB_API_KEY'] ?? '';

class TmdbApiService {
  Future<List<dynamic>> fetchPopularMovies() async {
    final Uri url = Uri.parse(
        '$_baseUrl/trending/movie/week?api_key=$_apiKey&language=en-US');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['results'];
    } else {
      // TODO: Handle API errors
      throw Exception('Failed to fetch popular movies');
    }
  }

  Future<List<dynamic>> fetchTopRatedMovies() async {
    final Uri url =
        Uri.parse('$_baseUrl/movie/top_rated?api_key=$_apiKey&language=en-US');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['results'];
    } else {
      // TODO: Handle API errors
      throw Exception('Failed to fetch top rated movies');
    }
  }

  Future<List<dynamic>> fetchUpcomingMovies() async {
    final Uri url = Uri.parse(
        '$_baseUrl/discover/movie?api_key=$_apiKey&include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['results'];
    } else {
      // TODO: Handle API errors
      throw Exception('Failed to fetch upcoming movies');
    }
  }
}
