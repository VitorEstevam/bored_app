import 'package:bored_app/models/activity_model.dart';
import 'package:bored_app/repositories/activity_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("retorna um activity model", () async {
    ActivityRepository a = ActivityRepository();
    ActivityModel b = await a.getSingleActivity();

    expect(b.activity != null, true);
  });
}
