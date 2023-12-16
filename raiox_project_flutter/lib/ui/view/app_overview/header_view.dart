import 'package:flutter/material.dart';
import 'package:raiox_project/ui/shared/colors.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 144,
      width: double.infinity,
      color: CustomColors.DEFAULT_BLUE,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child:
                  Image.asset('assets/icons/back-arrow-icon.png', scale: 2.5)),
          const Text(
            'Raio-x',
            style: TextStyle(
              color: CustomColors.DEFAULT_YELLOW,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              'assets/icons/menu-3-icon.png',
              scale: 2.5,
            ),
          )
        ],
      ),
    );
  }
}
