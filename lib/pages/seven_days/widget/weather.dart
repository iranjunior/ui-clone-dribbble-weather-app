import 'package:flutter/material.dart';

class WeatherSevenDaysPage extends StatelessWidget {
  const WeatherSevenDaysPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/icons/sun/8.png',
            fit: BoxFit.fitHeight,
            height: 100,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tomorrow',
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '20',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 66,
                        ),
                  ),
                  Text(
                    '/17˚',
                    style: Theme.of(context).textTheme.overline!.copyWith(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff88C8F5)
                        ),
                  ),
                ],
              ),
              Text(
                'Rainy - Cloudly',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
