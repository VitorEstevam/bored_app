import 'package:flutter/cupertino.dart';

import '../apis/bored_api.dart';
import '../models/activity_model.dart';

class ActivityRepository extends ChangeNotifier {
  ActivityModel _activity;
  BoredApi api = BoredApi();

  get activity => _activity;

  getSingleActivity() async {
    var response = await api.getSingleActivity();
    _activity = ActivityModel.fromJson(response.data);
    notifyListeners();
  }
}
