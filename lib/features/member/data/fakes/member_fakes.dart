import 'package:paipe/features/event/data/models/event.dart';
import 'package:faker/faker.dart';
import 'package:paipe/features/member/data/models/member.dart';
import 'package:paipe/features/member/data/models/participation.dart';
import 'package:paipe/features/tasks/data/fakes/task_fakes.dart';

class MemberFakes {
  static List<Member> generateFakeMembers(int amount) {
    var events = <Member>[];
    for (int i = 0; i < amount; i++) {
      events.add(MemberFakes.generateFakeMember());
    }
    return events;
  }

  static Member generateFakeMember() {
    var faker = Faker();
    return Member(
        faker.randomGenerator.integer(10000),
        faker.randomGenerator.string(faker.randomGenerator.integer(64)),
        TaskFakes.generateFakeTasks(faker.randomGenerator.integer(10)),
        Participation.values[faker.randomGenerator.integer(Participation.values.length - 1)]
    );
  }
}

