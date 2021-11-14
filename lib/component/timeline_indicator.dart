import 'package:flutter/material.dart';

class TimelineIndicator extends StatelessWidget {
  const TimelineIndicator({
    Key? key,
    required this.isFork,
  }) : super(key: key);

  final bool isFork;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isFork ? Colors.purple : Colors.green,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                isFork ? Icons.alt_route : Icons.code,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
