import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:repoline/core/model/repo.dart';

Future<List<RepoModel>> getRepos(String username) async {
  final response = await http.get(Uri.parse(
      'https://api.github.com/users/$username/repos?sort=created&direction=desc&per_page=300'));
  return compute(parseRepos, [response.body]);
}

List<RepoModel> parseRepos(List arguments) {
  final parsed = jsonDecode(arguments.elementAt(0));
  var repos = parsed
      .map<RepoModel>((repo) => RepoModel(
            int.parse(repo['id'].toString()),
            repo['name'],
            repo['html_url'],
            DateTime.parse(repo['created_at'].toString()),
            int.parse(repo['stargazers_count'].toString()),
            int.parse(repo['forks_count'].toString()),
            int.parse(repo['open_issues_count'].toString()),
            repo['visibility'],
          ))
      .toList();
  return repos;
}
