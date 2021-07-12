import 'package:flutter/material.dart';

class WeatherPerDay extends StatelessWidget {
  const WeatherPerDay({
    Key? key,
    required this.day,
    required this.state,
    required this.max,
    required this.min,
    required this.imagePath,
  }) : super(key: key);
  final String day;
  final String state;
  final String max;
  final String min;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Text(
            this.day,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                this.imagePath,
                height: 28,
              ),
              SizedBox(width: 8),
              Text(
                this.state,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                this.max,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white),
              ),
              Text(
                this.min,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
