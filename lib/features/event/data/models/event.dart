


import 'package:paipe/features/member/data/models/member.dart';
import 'package:paipe/features/member/data/models/participation.dart';

class Event {
  int id;
  String title;
  String description;
  List<Member> members = <Member>[];
  DateTime from;
  DateTime to;

  Event(this.id, this.title, this.description, this.members, this.from, this.to);

  /*
    Replace with SSE
   */
  List<Participation> getParticipations() {
    return members.map((Member member) => member.participation).toList();
  }
}
