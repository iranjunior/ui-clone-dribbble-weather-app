import 'package:flutter/material.dart';


class BackgroundBody extends StatelessWidget {
  const BackgroundBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.84,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          gradient: LinearGradient(
            colors: [Color(0xff19C3F5), Color(0xff0F3F8D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
