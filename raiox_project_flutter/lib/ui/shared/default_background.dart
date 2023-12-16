import 'dart:convert';
import 'dart:io';
  final bytes = File('assets/images/backgroud-xerox.png').readAsBytesSync();
  String img64 = base64Encode(bytes);
