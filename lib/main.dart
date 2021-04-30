import 'package:delivery/view/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWDelivery',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeView(),
    );
  }
}
