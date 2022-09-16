import 'package:paipe/features/member/data/models/member.dart';

class Task {
  int id;
  String description;
  List<Member> members = <Member>[];

  Task(this.id, this.description, this.members);
}
