import 'package:flutter/material.dart';
import 'package:carbon_icons/carbon_icons.dart';

class AppBarSevenPage extends StatelessWidget {
  const AppBarSevenPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff66C8FD),
                width: 0.8,
              ),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 20,
              ),
              Text(
                '7 days',
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
