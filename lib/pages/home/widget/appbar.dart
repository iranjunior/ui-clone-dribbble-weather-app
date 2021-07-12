import 'package:flutter/material.dart';
import 'package:carbon_icons/carbon_icons.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff66C8FD),
              width: 0.8,
            ),
          ),
          child: Icon(
            CarbonIcons.switcher,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CarbonIcons.location_star_filled,
                color: Colors.white,
                size: 20,
              ),
              Text(
                'Minsk',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        Icon(
          CarbonIcons.overflow_menu_vertical,
          color: Colors.white,
          size: 32,
        ),
      ],
    );
  }
}
