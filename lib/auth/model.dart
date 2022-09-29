class ModelClass {
  String? name;
  String? mob;
  String? id;
  ModelClass({
    this.name,
    this.id,
    this.mob,
  });
  factory ModelClass.fromjson(Map<String, dynamic> json) {
    return ModelClass(
      id: json['id'],
      mob: json['mob'],
      name: json['name'],
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        "mob": mob,
        "id": id,
      };
}
