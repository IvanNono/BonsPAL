import 'package:bonspal/models/BasicEntity.dart';

class Bon extends BasicEntity{
  DateTime dateExpiration;
  String codeBon;
  String qrCode;

  Bon(this.dateExpiration, this.codeBon,
      this.qrCode) :
        super('', null, null, '', '');
}