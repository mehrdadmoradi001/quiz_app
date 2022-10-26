import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget(){
  return AppBar(
    backgroundColor: Colors.indigo[800],
    title: Text(
      'کوییز کویین',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,);
}

