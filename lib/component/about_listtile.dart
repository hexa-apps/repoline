import 'package:flutter/material.dart';
import 'package:repoline/core/service/utility.dart';

class AboutPageListTile extends StatelessWidget {
  const AboutPageListTile(
      {Key? key,
      required this.isTitle,
      required this.icon,
      required this.content,
      required this.fontSize,
      required this.fontWeight,
      required this.isLaunch,
      required this.url})
      : super(key: key);

  final bool isTitle;
  final bool isLaunch;
  final Icon icon;
  final String content;
  final String url;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    var contentStyle = TextStyle(
        fontFamily: 'SpaceMono', fontSize: fontSize, fontWeight: fontWeight);
    return isTitle
        ? ListTile(
            title: Text(
            content,
            style: contentStyle,
          ))
        : ListTile(
            onTap: isLaunch ? () => launchURL(url) : () => shareText(url),
            title: Text(
              content,
              style: contentStyle,
            ),
            leading: icon,
          );
  }
}
