import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget(String titleAppBar){
  return AppBar(
    backgroundColor: Colors.indigo[800],
    title: Text(
      titleAppBar,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,);
}

