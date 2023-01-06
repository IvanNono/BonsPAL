// import 'package:json_annotation/json_annotation.dart';
/*part 'BasicEntity.g.dart';

@JsonSerializable(explicitToJson: true)*/
class BasicEntity{
  String id;
  DateTime? dateCreation ;
  DateTime? dateModification ;
  String description;
  String autres;


  BasicEntity(this.id, this.dateCreation, this.dateModification,
      this.description, this.autres);

/*BasicEntity.name(this.id);

  Map<String, dynamic> toJson() =>
      _$BasicEntityToJson(this);

  static BasicEntity fromJson(Map<String, dynamic> map) =>
      _$BasicEntityFromJson(map);*/

}