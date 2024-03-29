import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_req/models/movie.dart';

class HttpService {
  final String baseUrl = 'https://movie.tukanginyuk.com/api';

  Future<List<Movie>?> getPopularMovies() async {
    final String uri = "$baseUrl/getmovie";

    http.Response response = await http.get(Uri.parse(uri));

    if (response.statusCode == HttpStatus.ok) {
      print("Success");
      final jsonResponse = json.decode(response.body);
      final List moviesList = jsonResponse['data'];
      List<Movie> movies =
          List<Movie>.from(moviesList.map((i) => Movie.fromJson(i)));
      return movies;
    } else {
      print("Failed: ${response.statusCode}");
      return null;
    }
  }
}
