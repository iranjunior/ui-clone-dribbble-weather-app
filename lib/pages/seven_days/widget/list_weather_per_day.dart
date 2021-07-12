import 'package:flutter/material.dart';
import 'package:weather_app/pages/seven_days/widget/widget.dart';

class ListWeatherPerDay extends StatelessWidget {
  final weatherPerDay = [
    {
      'day': 'Mon',
      'state': 'Rainy',
      'imagePath': 'assets/icons/cloud/7.png',
      'max': '+20˚',
      'min': '+14˚',
    },
    {
      'day': 'Tue',
      'state': 'Rainy',
      'imagePath': 'assets/icons/cloud/7.png',
      'max': '+20˚',
      'min': '+16˚',
    },
    {
      'day': 'Wed',
      'state': 'Storm',
      'imagePath': 'assets/icons/cloud/12.png',
      'max': '+19˚',
      'min': '+13˚',
    },
    {
      'day': 'Thu',
      'state': 'Slow',
      'imagePath': 'assets/icons/moon/14.png',
      'max': '+18˚',
      'min': '+12˚',
    },
    {
      'day': 'Fri',
      'state': 'Thunder',
      'imagePath': 'assets/icons/lighting/34.png',
      'max': '+23˚',
      'min': '+19˚',
    },
    {
      'day': 'Sat',
      'state': 'Rainy',
      'imagePath': 'assets/icons/cloud/7.png',
      'max': '+25˚',
      'min': '+17˚',
    },
    {
      'day': 'Sun',
      'state': 'Storm',
      'imagePath': 'assets/icons/cloud/12.png',
      'max': '+21˚',
      'min': '+18˚',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.56,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: weatherPerDay.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: WeatherPerDay(
                  day: weatherPerDay[index]['day']!,
                  state: weatherPerDay[index]['state']!,
                  max: weatherPerDay[index]['max']!,
                  min: weatherPerDay[index]['min']!,
                  imagePath: weatherPerDay[index]['imagePath']!,
                ),
              );
            }),
      ),
    );
  }
}
