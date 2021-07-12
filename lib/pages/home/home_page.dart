import 'package:flutter/material.dart';

import 'package:weather_app/pages/home/widget/widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ListWeatherPerHour(),
        ),
        BackgroundBody(),
        Body(
          children: [
              Flexible(
                child: AppBarHomePage(),
              ),
              Flexible(
                flex: 6,
                child: WeatherHomePage(),
              ),
              Divider(
                color: Color(0xff2284F6),
                height: 20,
                thickness: 2,
              ),
              Flexible(
                child: DetailsWeather(),
              )
          ],
        )
      ],
    );
  }
}
