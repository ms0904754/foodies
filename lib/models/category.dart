import 'package:flutter/material.dart';

class category{
  final String id;
  final String title;
  final Color color;
  const category({required this.id,required this.title,this.color = Colors.orange});
}

// we have to add const in front of constructor to make the list const present in dummy_data.dart file
//here we use named argument instead of positional argument by adding curly braces in category constructor