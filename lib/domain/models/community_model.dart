class CommunityData {
  String? title;
  String? assetImage;
  int? followers;
  int? views;

  CommunityData({this.title, this.assetImage, this.followers, this.views});

  CommunityData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    assetImage = json['assetImage'];
    followers = json['followers'];
    views = json['views'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['assetImage'] = assetImage;
    data['followers'] = followers;
    data['views'] = views;
    return data;
  }
}
