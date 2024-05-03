import 'package:myproject2/OfflineDatabase/models/Student.dart';

import 'repository.dart';

class MyService {
  late Repository _repository;

  MyService() {
    _repository = Repository();
  }

  insertService(Student student) async {
    return await _repository.insertData("student", student.studentmap());
  }

  readService() async {
    return await _repository.getData("student");
  }
}
