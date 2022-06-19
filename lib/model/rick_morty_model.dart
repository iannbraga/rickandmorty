class RickMortyModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? image;

  RickMortyModel(
      {this.id, this.name, this.status, this.species, this.gender, this.image});

  RickMortyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    gender = json['gender'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['gender'] = gender;
    data['image'] = image;
    return data;
  }
}
