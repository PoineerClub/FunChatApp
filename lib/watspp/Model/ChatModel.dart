class ChatModel {
  String name;
  String? icon;
  bool isGroup;
  String time;
  String currentMessage;

  bool select = false;
  int? id;
  ChatModel({
    required this.name,
    this.icon,
    this.isGroup = false,
    this.time = "",
    this.currentMessage = "",
    this.select = false,
    this.id,
  });
}
