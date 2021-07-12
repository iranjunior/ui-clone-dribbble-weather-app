import 'package:flutter/material.dart';

import 'package:weather_app/pages/seven_days/widget/widget.dart';

class SevenDaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ListWeatherPerDay(),
        ),
        BackgroundBody(),
        Body(
          children: [
            Flexible(
              child: AppBarSevenPage(),
            ),
            Flexible(
              flex: 2,
              child: WeatherSevenDaysPage(),
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
