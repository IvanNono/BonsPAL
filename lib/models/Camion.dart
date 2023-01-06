import 'package:bonspal/models/BasicEntity.dart';

class Camion extends BasicEntity{
  String marque;
  int numChassis;
  String couleur;
  String categorie;
  String nationalite;

  Camion(this.marque, this.numChassis,
      this.couleur, this.categorie,
      this.nationalite) :
        super('', null, null, '', '');


}