import 'package:asteroids_newos_api/services/neows_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final neowsServices = Provider.of<NeoWsServices>(context);
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        ElevatedButton(
            onPressed: () async {
              await neowsServices.getFeed('2015-09-07', '2015-09-08');
            },
            child: const Text('Feed')),
        ElevatedButton(
            onPressed: () async {
              await neowsServices.getLookup('3542519');
            },
            child: const Text('Lookup')),
        ElevatedButton(
            onPressed: () async {
              await neowsServices.getBrowse();
            },
            child: const Text('Browse')),
      ]),
    );
  }
}
