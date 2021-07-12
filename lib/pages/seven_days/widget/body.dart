import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    this.children,
  }) : super(key: key);
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        gradient: LinearGradient(
          colors: [Color(0xff19C3F5), Color(0xff236EF4)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        border: Border.all(
          color: Color(0xff2F9AEB),
          width: 1.5,
        ),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
            left: 16,
            top: 50,
            bottom: 16,
          ),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: this.children ?? [],
          ),
        ),
      ),
    );
  }
}
