class RepoModel {
  int _id;
  String _name;
  String _url;
  DateTime _createdAt;
  int _stargazersCount;
  int _forksCount;
  int _openIssuesCount;
  String _visibility;

  RepoModel(
      this._id,
      this._name,
      this._url,
      this._createdAt,
      this._stargazersCount,
      this._forksCount,
      this._openIssuesCount,
      this._visibility);

  factory RepoModel.fromJson(Map<String, dynamic> json) {
    return RepoModel(
      int.parse(json['id'].toString()),
      json['name'],
      json['html_url'],
      DateTime.parse(json['created_at'].toString()),
      int.parse(json['stargazers_count'].toString()),
      int.parse(json['forks_count'].toString()),
      int.parse(json['open_issues_count'].toString()),
      json['visibility'],
    );
  }

  int get id => _id;
  String get name => _name;
  String get url => _url;
  DateTime get createdAt => _createdAt;
  int get stargazersCount => _stargazersCount;
  int get forksCount => _forksCount;
  int get openIssuesCount => _openIssuesCount;
  String get visibility => _visibility;
}
