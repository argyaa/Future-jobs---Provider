import 'package:flutter/cupertino.dart';

class JobModel {
  String id;
  String name;
  String category;
  String companyName;
  String companyLogo;
  String location;
  List about;
  List qualifications;
  List responsibilities;
  int createdAt;
  int updateAt;

  JobModel(
      {this.about,
      this.category,
      this.companyLogo,
      this.companyName,
      this.createdAt,
      this.id,
      this.location,
      this.name,
      this.qualifications,
      this.responsibilities,
      this.updateAt});

  JobModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'];
    responsibilities = json['responsibilities'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'companyName': companyName,
      'companyLogo': companyLogo,
      'location': location,
      'about': about,
      'qualifications': qualifications,
      'responsibilities': responsibilities,
      'createdAt': createdAt,
      'updateAt': updateAt,
    };
  }
}
