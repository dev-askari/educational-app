
import 'package:educational_app/model/chat_gpt_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../utils/utils_methods.dart';

class ChatGptScreenController extends GetxController{
  String micIcon=IconImage.get('mic.png');
  String msgSendIcon=IconImage.get('msg_send.png');
  final TextEditingController textEditingController = TextEditingController();
  final RxList<String> messages = <String>[].obs;
  FocusNode chatMsg=FocusNode();


  void sendMessage() {
    final message = textEditingController.text;
    if (message.isNotEmpty) {
     listOfMsg.add(ChatGptModel(isReceiver: false, msg: textEditingController.text));
     removeFocus();
      textEditingController.clear();

    }
  }

  void removeFocus(){
    if(chatMsg.hasFocus){
      chatMsg.unfocus();
    }
  }

  RxList<ChatGptModel> listOfMsg = [
    ChatGptModel(isReceiver: true, msg: "I’m CodeStorm, your creative and helpful collaborator. I have limitations and won’t always get it right, but your feedback will help me improve."),
   ].obs;

}