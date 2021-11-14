import 'package:flutter/material.dart';
import '../component/end_child.dart';
import '../component/start_child.dart';
import '../component/timeline_indicator.dart';
import '../core/model/repo.dart';
import '../core/service/repo.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLinePage extends StatefulWidget {
  final String username;
  const TimeLinePage({Key? key, required this.username}) : super(key: key);

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  get username => widget.username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: FutureBuilder(
          future: getRepos(username),
          builder: (BuildContext ctx, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text('error: ${snapshot.error}'),
                  );
                } else {
                  final List<RepoModel> data = snapshot.data;
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (ctx, index) => TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineXY: 0.3,
                            beforeLineStyle:
                                const LineStyle(color: Colors.black87),
                            indicatorStyle: const IndicatorStyle(
                              indicatorXY: 0.3,
                              drawGap: true,
                              width: 30,
                              height: 30,
                              indicator: TimelineIndicator(),
                            ),
                            startChild: StartChild(data: data, index: index),
                            endChild: EndChild(data: data, index: index),
                          ));
                }
            }
          }),
    );
  }
}
