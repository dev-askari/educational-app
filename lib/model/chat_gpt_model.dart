
class ChatGptModel{
bool isReceiver = false;
String msg = "";


ChatGptModel({required this.isReceiver, required this.msg});

  @override
  String toString() {
    return 'ChatGptModel{isReceiver: $isReceiver, msg: $msg}';
  }
}