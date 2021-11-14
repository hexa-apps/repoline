import 'package:flutter/material.dart';
import 'package:repoline/core/model/repo.dart';

class EndChild extends StatelessWidget {
  const EndChild({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  final List<RepoModel> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.elementAt(index).name,
            style: TextStyle(
              fontFamily: 'SpaceMono',
              fontSize: 16,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'stars: ${data.elementAt(index).stargazersCount}',
            style: TextStyle(
              fontFamily: 'SpaceMono',
              fontSize: 16,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'issues: ${data.elementAt(index).openIssuesCount}',
            style: TextStyle(
              fontFamily: 'SpaceMono',
              fontSize: 14,
              color: Colors.white.withOpacity(0.6),
            ),
          )
        ],
      ),
    );
  }
}
