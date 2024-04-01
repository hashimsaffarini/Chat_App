import 'package:chat_app/constants.dart';

class Message {
  final String? message;

  Message({this.message});

  factory Message.fromJson(json) {
    return Message(
      message: json[kMessage],
    );
  }
}
