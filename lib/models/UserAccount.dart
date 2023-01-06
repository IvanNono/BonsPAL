// import 'package:json_annotation/json_annotation.dart';
/*part 'UserAccount.g.dart';

@JsonSerializable(explicitToJson: true)*/
class UserAccount{
  String idPerson;
  String name;
  String surname;
  String matricule;
  String password;
  String email;
  String phone;
  String sex;
  String address;
  String type;
  DateTime birthday;
  DateTime dateCreation;
  bool state;
  bool status;
  String role;


  UserAccount(this.idPerson, this.name, this.surname,
      this.matricule, this.password, this.email,
      this.phone, this.sex, this.address,
      this.type, this.birthday, this.dateCreation,
      this.state, this.status, this.role);

  /*UserAccount.name(this.idPerson);

  Map<String, dynamic> toJson() =>
      _$UserAccountToJson(this);

  static UserAccount fromJson(Map<String, dynamic> map) =>
      _$UserAccountFromJson(map);*/

}