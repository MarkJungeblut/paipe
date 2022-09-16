import 'package:faker/faker.dart';
import 'package:paipe/features/member/data/fakes/member_fakes.dart';
import 'package:paipe/features/tasks/data/models/task.dart';

class TaskFakes {
  static List<Task> generateFakeTasks(int amount) {
    var events = <Task>[];
    for (int i = 0; i < amount; i++) {
      events.add(TaskFakes.generateFakeTask());
    }
    return events;
  }

  static Task generateFakeTask() {
    var faker = Faker();
    return Task(
        faker.randomGenerator.integer(10000),
        faker.randomGenerator.string(faker.randomGenerator.integer(64)),
        MemberFakes.generateFakeMembers(10)
    );
  }
}

