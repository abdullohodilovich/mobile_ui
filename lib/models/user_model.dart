
class User {
  final String userName;
  final String text;
  final int textFontSize;
  final bool isStarred;

  const User({
    required this.userName,
    required this.text,
    required this.textFontSize,
    required this.isStarred,
  });

  @override
  String toString() {
    return "User(userName: $userName, text: $text, textFont: $textFontSize, isStarred: $isStarred)";
  }

}
