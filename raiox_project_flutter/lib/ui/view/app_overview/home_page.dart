import 'package:flutter/material.dart';
import 'package:raiox_project/ui/view/app_overview/timer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Hoje',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),

              ),
            ),
            SizedBox(height: 10,),
            Align( alignment: Alignment.centerLeft, child: const MyDateWidget()),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 14),
              width: double.infinity,
              height: 60,
              color: const Color(0xFF201F1F),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Raio-x ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF7A7777)),
                    ),
                    Text(
                      '12',
                      style: TextStyle(color: Color(0xFF7A7777), fontSize: 25),
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              color: const Color(0xFF201F1F),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Xerox ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF7A7777))),
                  Text('12',
                      style: TextStyle(color: Color(0xFF7A7777), fontSize: 20))
                ],
              ),
            ),
          ]),
        ));
  }
}
