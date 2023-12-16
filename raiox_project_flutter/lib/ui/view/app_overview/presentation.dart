import 'package:flutter/material.dart';
import 'package:raiox_project/shared_const/page_router.dart';

class Presentation extends StatelessWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('data'),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.MOBILE_HOME);
            },
            icon: const Icon(Icons.abc),
          )
        ],
      ),
    );
  }
}
