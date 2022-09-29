class ModelClass {
  String? name;
  String? mob;
  String? id;
  String? age;
  String? domain;

  ModelClass({
    this.name,
    this.id,
    this.mob,
    this.age,
    this.domain,
  });
  factory ModelClass.fromjson(Map<String, dynamic> json) {
    return ModelClass(
      id: json['id'],
      mob: json['mob'],
      name: json['name'],
      age: json['age'],
      domain: json['domain'],
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        "mob": mob,
        "id": id,
        "age": age,
        "domain": domain,
      };
}
