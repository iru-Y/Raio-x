import 'package:flutter/material.dart';
import 'package:raiox_project/shared_const/page_router.dart';
import 'package:raiox_project/ui/shared/colors.dart';
import 'package:raiox_project/ui/view/app_overview/general.dart';
import 'package:raiox_project/ui/view/app_overview/presentation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Raleway', primaryColor: CustomColors.DEFAULT_BLUE),
      routes: {
        Routes.MOBILE_HOME: (context) => const General(),
        Routes.MOBILE_PRESENTATION: (context) => const Presentation()
      },
    );
  }
}
