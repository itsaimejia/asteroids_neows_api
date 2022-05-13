import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> getFeed() async {
    final response = await http.get(Uri.parse(
        'https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY'));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        ElevatedButton(
            onPressed: () async {
              await getFeed();
            },
            child: Text('Feed')),
        ElevatedButton(onPressed: () {}, child: Text('Lookup')),
        ElevatedButton(onPressed: () {}, child: Text('Browse')),
      ]),
    );
  }
}
