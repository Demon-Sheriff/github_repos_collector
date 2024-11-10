// gist_service.dart
import 'dart:convert';

import 'package:github_repo_app/models/repository.dart';
import 'package:http/http.dart' as http;

class GistService {
  final String baseUrl = 'https://api.github.com';
  final String? accessToken;

  GistService({this.accessToken});

  Map<String, String> get _headers => {
        'Accept': 'application/vnd.github.v3+json',
        if (accessToken != null) 'Authorization': 'Bearer $accessToken',
      };

  // fetch public gists with pagination
  Future<List<Gist>> getPublicGists({
    int perPage = 30,
    int page = 1,
  }) async {
    final url = Uri.parse('$baseUrl/gists/public?per_page=$perPage&page=$page');

    final response = await http.get(url, headers: _headers);

    final List<dynamic> jsonList = json.decode(response.body);
    return jsonList.map((json) => Gist.fromJson(json)).toList();
  }

  // fetch a specific gist by ID
  Future<Gist> getGistById(String gistId) async {
    final url = Uri.parse('$baseUrl/gists/$gistId');
    final response = await http.get(url, headers: _headers);

    return Gist.fromJson(json.decode(response.body));
  }

  // fetch gists for a specific user
  Future<List<Gist>> getUserGists(
    String username, {
    int perPage = 30,
    int page = 1,
  }) async {
    final url = Uri.parse(
        '$baseUrl/users/$username/gists?per_page=$perPage&page=$page');

    final response = await http.get(url, headers: _headers);

    final List<dynamic> jsonList = json.decode(response.body);
    return jsonList.map((json) => Gist.fromJson(json)).toList();
  }
}
