import 'package:flutter/material.dart';
import 'package:raiox_project/ui/view/app_overview/header_view.dart';
import 'package:raiox_project/ui/view/app_overview/home_page.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: const Column(
            children: [
              HeaderView(),
              HomePage()
            ],
          ),
        ),
      ),
    );
  }
}
