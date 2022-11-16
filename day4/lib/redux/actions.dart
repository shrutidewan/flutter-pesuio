import 'package:day4/models/student.dart';

abstract class Action {}

class AddStudent extends Action {
  Student newStudent;
  AddStudent({required this.newStudent});
}
