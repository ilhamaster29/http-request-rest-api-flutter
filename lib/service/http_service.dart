import 'dart:io';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = 'ef38afb22738748d28a5e119499928b6';
  final String baseUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=ef38afb22738748d28a5e119499928b6';

  Future<String?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}
