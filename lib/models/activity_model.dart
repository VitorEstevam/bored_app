class ActivityModel {
  String activity;
  double accessibility;
  String type;
  int participants;
  double price;
  String link;
  String key;

  ActivityModel(
      {this.activity,
      this.accessibility,
      this.type,
      this.participants,
      this.price,
      this.link,
      this.key});

  ActivityModel.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    accessibility = json['accessibility'] * 1.0;
    type = json['type'];
    participants = json['participants'];
    price = json['price'] * 1.0;
    link = json['link'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this.activity;
    data['accessibility'] = this.accessibility;
    data['type'] = this.type;
    data['participants'] = this.participants;
    data['price'] = this.price;
    data['link'] = this.link;
    data['key'] = this.key;
    return data;
  }
}
