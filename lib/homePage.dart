import 'package:app/listview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes app'),
      ),
      body: const AppBody(),
    );
  }
}
