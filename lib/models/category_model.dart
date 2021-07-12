class CategoryModel {
  String id;
  String name;
  String imageUrl;
  int createdAt;
  int updatedAt;

  CategoryModel(
      {this.createdAt, this.id, this.imageUrl, this.name, this.updatedAt});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createAt'];
    updatedAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
