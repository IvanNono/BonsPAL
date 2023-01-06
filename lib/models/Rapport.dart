import 'package:bonspal/models/BasicEntity.dart';

class Rapport extends BasicEntity{
  String contenu;

  Rapport(this.contenu) :
        super('', null, null, '', '');
}