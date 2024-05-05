import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:bharatupdates/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=in&pageSize=100&apiKey='
     + Key1.key1),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}