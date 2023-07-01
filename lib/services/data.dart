import 'package:kamran_akbar_technical_test_app/models/MovieIntelModel.dart';

import '../models/MoviesModel.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../utills/constants.dart';

class ApiHitting {
  static Future<MoviesModel?> getMovies() async {
    try {
      final response =
          await http.get(Uri.parse("$baseUrl$secretApiKey&s=\$query"));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data["Response"] == 'True') {
          return MoviesModel.fromJson(data);
        } else {
          log("Error Occurred");
          return null;
        }
      } else {
        log("Error Occurred");
        return null;
      }
    } catch (e) {
      log("Exception Caught: ${e.toString()}");
      return null;
    }
  }

  static Future<MovieIntelModel?> getSpecificMovies(
      {required String imbdKey}) async {
    try {
      final response =
          await http.get(Uri.parse("$baseUrl$secretApiKey&i=$imbdKey"));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data["Response"] == 'True') {
          return MovieIntelModel.fromJson(data);
        } else {
          log("Error Occurred");
          return null;
        }
      } else {
        log("Error Occurred");
        return null;
      }
    } catch (e) {
      log("Exception Caught: ${e.toString()}");
      return null;
    }
  }
}
