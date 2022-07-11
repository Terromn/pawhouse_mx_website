import 'package:flutter/material.dart';
import 'package:pawhouse_website/widgets/my_app_bar.dart';
import 'package:pawhouse_website/widgets/my_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'PAWHOUSE';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        MediaQuery.of(context).size.height * .08,
      ),
      endDrawer: MyDrawer("INICIO"),
    );
  }
}
