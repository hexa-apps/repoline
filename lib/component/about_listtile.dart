import 'package:flutter/material.dart';

class AboutPageListTile extends StatelessWidget {
  const AboutPageListTile(
      {Key? key,
      required this.isTitle,
      this.onPressed,
      required this.icon,
      required this.content})
      : super(key: key);

  final bool isTitle;
  final void onPressed;
  final Icon icon;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return isTitle
        ? ListTile(title: content)
        : ListTile(
            onTap: () => onPressed,
            title: content,
            leading: icon,
          );
  }
}
