class Student {
  int? id;
  String? name;
  String? subject;
  String? city;

  studentmap() {
    var mapping = Map<String, dynamic>();
    mapping["id"] = id ?? null;
    mapping["name"] = name;
    mapping["subject"] = subject;
    mapping["city"] = city;
    return mapping;
  }
}
