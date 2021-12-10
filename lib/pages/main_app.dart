
import 'package:comicbook_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainApp extends StatelessWidget
{
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
        title: 'Comic Book',
        home: Home()
    );
  }
}