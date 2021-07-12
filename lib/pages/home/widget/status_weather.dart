import 'package:flutter/material.dart';

class StatusWeather extends StatelessWidget {
  const StatusWeather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 4),
            Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 8),
            Text(
              'Updating',
              style: Theme.of(context)
                  .textTheme
                  .caption,
            ),
            SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}
