import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget(String titleAppBar,Color? color){
  return AppBar(
    backgroundColor: color,
    title: Text(
      titleAppBar,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,);
}

