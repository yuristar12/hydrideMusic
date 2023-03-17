class CalciteTabsItemModel {
  late String text;
  late dynamic key;

  CalciteTabsItemModel({required this.text, required this.key});

  CalciteTabsItemModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['key'] = this.key;
    return data;
  }
}
