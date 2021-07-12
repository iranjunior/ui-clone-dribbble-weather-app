import 'package:flutter/material.dart';
import 'package:weather_app/pages/home/widget/status_weather.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StatusWeather(),
        Expanded(
          child: Image.asset(
            'assets/icons/cloud/12.png',
            fit: BoxFit.cover,
          ),
        ),
        Text(
          '21˚',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Thunderstorm',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'Monday, 17 May',
          style: Theme.of(context).textTheme.overline,
        ),
      ],
    );
  }
}
