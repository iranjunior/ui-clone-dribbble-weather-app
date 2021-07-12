import 'package:flutter/material.dart';
import 'package:weather_app/pages/home/widget/widget.dart';

class ListWeatherPerHour extends StatefulWidget {
  ListWeatherPerHour({Key? key}) : super(key: key);

  @override
  _ListWeatherPerHourState createState() => _ListWeatherPerHourState();
}

class _ListWeatherPerHourState extends State<ListWeatherPerHour> {
  int _indexActive = 1;
  final weatherPerHour = [
    {
      'temperature': '23˚',
      'hour': '22:00',
      'imagePath': 'assets/icons/cloud/7.png',
    },
    {
      'temperature': '21˚',
      'hour': '23:00',
      'imagePath': 'assets/icons/lighting/34.png',
    },
    {
      'temperature': '22˚',
      'hour': '00:00',
      'imagePath': 'assets/icons/cloud/7.png',
    },
    {
      'temperature': '19˚',
      'hour': '01:00',
      'imagePath': 'assets/icons/moon/2.1.png',
    },
    {
      'temperature': '18˚',
      'hour': '02:00',
      'imagePath': 'assets/icons/moon/14.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/seven-days'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Today',
                            style: Theme.of(context).textTheme.headline3),
                        Text('7 days >',
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: weatherPerHour.length,
                    itemBuilder: (context, index) {
                    return WeatherPerHour(
                      index: index,
                      temperature: weatherPerHour[index]['temperature']!,
                      hour: weatherPerHour[index]['hour']!,
                      imagePath: weatherPerHour[index]['imagePath']!,
                      active: _indexActive == index,
                      onTap: (index) {
                        setState(() {
                          _indexActive = index;
                        });
                      },
                    );
                  }),
                )
              ],
            ),
          );
  }
}