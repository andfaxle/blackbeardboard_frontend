import 'package:blackbeards_board/extensions.dart';

// Model of the Message object
// Each Message is child of one Blackboard
// No logic is implemented here, only transformation from and to json
class Message{

  Message(String content,{int timestamp}){
    this.content = content;
    this.timestamp = timestamp;
  }

  // The content of the message
  String content;

  // The creation timestamp
  int timestamp;

  static const _KEY_CONTENT = "content";
  static const _KEY_TIMESTAMP = "timestamp";

  static Message fromJson(Map<String,dynamic> json){

    String content = json.getOrNull(_KEY_CONTENT);
    int timestamp = json.getOrNull(_KEY_TIMESTAMP);

    return Message(content, timestamp: timestamp);
  }

  Map<String,dynamic> toJson(){

    return {
      _KEY_CONTENT: content,
      _KEY_TIMESTAMP: timestamp,
    };
  }
  @override
  String toString() {
    return 'Message: {content: ${content}, timestamp: ${timestamp}}';
  }

}