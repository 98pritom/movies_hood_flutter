import 'dart:convert';

import 'package:movies_hood/constants.dart';
import 'package:movies_hood/models/movies.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';
  static const _topRatedMoviesUrl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';
  static const _upComingMoviesUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';

  Future<List<Movies>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));

    if(response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Movies>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedMoviesUrl));

    if(response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Movies>> getUpComingMovies() async {
    final response = await http.get(Uri.parse(_upComingMoviesUrl));

    if(response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

}