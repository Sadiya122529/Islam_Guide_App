import 'package:islam_guide/namaz%20time/model/date_model.dart';
import 'package:islam_guide/namaz%20time/model/time_model.dart';

class DateTimeModel {
  DateModel _dateModel;
  TimeModel _timeModel;

  DateTimeModel.parseJson(data) {
    _timeModel =
        data['times'] != null ? TimeModel.parseJson(data['times']) : null;
    _dateModel =
        data['dates'] != null ? DateModel.parseJson(data['dates']) : null;
  }

  DateModel get dates => _dateModel;
  TimeModel get times => _timeModel;
}
