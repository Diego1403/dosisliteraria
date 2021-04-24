import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class User {
  final String id;
  final String name;
  final String email;
  final DateTime joined;


  const User({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.joined,
  });

  String get postTimeFormatted => DateFormat.yMMMMEEEEd().format(joined);
}


