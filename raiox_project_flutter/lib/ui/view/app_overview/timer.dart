import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateWidget extends StatefulWidget {
  const MyDateWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDateWidgetState createState() => _MyDateWidgetState();
}

class _MyDateWidgetState extends State<MyDateWidget> {
  late DateTime currentDate;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();

    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        currentDate = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss').format(currentDate);

    return Text(
      formattedDate,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}