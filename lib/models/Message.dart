// import 'package:json_annotation/json_annotation.dart';
/*part 'Message.g.dart';

@JsonSerializable(explicitToJson: true)*/
class Message{
  String idMessage;
  String emailReceiver;
  String content;
  String title;

  Message(this.idMessage, this.emailReceiver, this.content, this.title);


  /*static Map<String, dynamic> toJson(Message message) =>
      _$MessageToJson(message);

  static Message fromJson(Map<String, dynamic> map) =>
      _$MessageFromJson(map);*/

}