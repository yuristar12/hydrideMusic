// 菜单
enum MenuItemName {
  find,
  personal,
}

class MenuItemModel {
  String title;
  String? router;
  MenuItemName name;

  MenuItemModel({required this.title, required this.name, this.router});
}
