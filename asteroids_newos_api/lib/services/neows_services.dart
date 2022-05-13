// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NeoWsServices extends ChangeNotifier {
  final String urlBase = 'api.nasa.gov';
  final String apiKey = 'DEMO_KEY';

  Future<void> getFeed(String start, String end) async {
    final response = await http.get(Uri.https(urlBase, '/neo/rest/v1/feed',
        {'start_date': start, 'end_date': end, 'api_key': apiKey}));
    print(response.body);
  }

  Future<void> getLookup(String id) async {
    final response = await http
        .get(Uri.https(urlBase, '/neo/rest/v1/neo/$id', {'api_key': apiKey}));
    print(response.body);
  }

  Future<void> getBrowse() async {
    final response = await http.get(
        Uri.https(urlBase, '/neo/rest/v1/neo/browse', {'api_key': apiKey}));
    print(response.body);
  }
}
