import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Library extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return Center(
        child: Text('Library'),
    );
  }
}