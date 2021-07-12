import 'package:flutter/material.dart';

class WeatherPerHour extends StatelessWidget {
  const WeatherPerHour({
    Key? key,
    required this.index,
    required this.temperature,
    required this.hour,
    required this.imagePath,
    this.active = false,
    required this.onTap,
  }) : super(key: key);
  final int index;
  final String temperature;
  final String hour;
  final String imagePath;
  final bool active;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onTap(this.index),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: this.active == true ? 16 : 12,
          horizontal: this.active == true ? 14 : 12,
        ),
        margin: EdgeInsets.only(left: this.index == 0 ? 16 : 0, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.active == true ? 28 : 32),
          border: Border.all(color: Color(0xff0F1829), width: 1.5),
          gradient: this.active == true
              ? LinearGradient(
                  colors: [Color(0xff19C3F5), Color(0xff236EF4)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              this.temperature,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: this.active == true ? 20 : 18,
                  ),
            ),
            SizedBox(height: 4),
            Image.asset(
              this.imagePath,
              height: 28,
            ),
            SizedBox(height: 4),
            Text(
              this.hour,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: this.active == true ? Colors.white : null),
            ),
          ],
        ),
      ),
    );
  }
}
