import 'package:flutter/material.dart';
import 'package:repoline/core/model/repo.dart';

class StartChild extends StatelessWidget {
  const StartChild({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  final List<RepoModel> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: const Alignment(0.0, -0.50),
        child: Text(
          '${data.elementAt(index).createdAt.day}-${data.elementAt(index).createdAt.month}-${data.elementAt(index).createdAt.year}',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontFamily: 'SpaceMono',
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
