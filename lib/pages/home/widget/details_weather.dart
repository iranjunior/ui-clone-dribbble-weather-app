import 'package:flutter/material.dart';
import 'package:carbon_icons/carbon_icons.dart';

class DetailsWeather extends StatelessWidget {
  const DetailsWeather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Icon(
                CarbonIcons.windy_strong,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                '13 km/h',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Wind',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CarbonIcons.humidity,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                '24%',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Humidity',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CarbonIcons.rain,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                '87%',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Chance of rain',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
