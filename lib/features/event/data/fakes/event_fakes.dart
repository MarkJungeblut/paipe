import 'package:paipe/features/event/data/models/event.dart';
import 'package:faker/faker.dart';
import 'package:paipe/features/member/data/fakes/member_fakes.dart';

class EventFakes {
  static List<Event> generateFakeEvents(int amount) {
    var events = <Event>[];
    for (int i = 0; i < amount; i++) {
      events.add(EventFakes.generateFakeEvent());
    }
    return events;
  }

  static Event generateFakeEvent() {
    var faker = Faker();
    return Event(
        faker.randomGenerator.integer(10000),
        faker.randomGenerator.string(faker.randomGenerator.integer(64)),
        faker.randomGenerator.string(faker.randomGenerator.integer(1024)),
        MemberFakes.generateFakeMembers(10),
        faker.date.dateTime(minYear: 1900, maxYear: 2100),
        faker.date.dateTime(minYear: 1900, maxYear: 2100)
    );
  }
}

