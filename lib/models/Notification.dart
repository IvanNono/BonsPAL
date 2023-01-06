import 'package:bonspal/models/BasicEntity.dart';

class notification extends BasicEntity{
  String message;

  notification(this.message) : super('', null, null, '', '');
}