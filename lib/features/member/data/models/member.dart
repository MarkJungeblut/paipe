
import 'package:paipe/features/member/data/models/participation.dart';
import 'package:paipe/features/task/data/models/task.dart';

class Member {
  int id;
  String name;
  List<Task> tasks = <Task>[];
  Participation participation = Participation.none;

  Member(this.id, this.name, this.tasks, this.participation);
}
