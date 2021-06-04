class TimeModel {
  String _imsak;
  String _sunrise;
  String _fajr;
  String _dhuhr;
  String _asr;
  String _sunset;
  String _maghrib;
  String _isha;
  String _midnight;

  TimeModel.parseJson(data) {
    _imsak = data['Imsak'] != null ? data['Imsak'] : null;
    _sunrise = data['Sunrise'] != null ? data['Sunrise'] : null;
    _fajr = data['Fajr'] != null ? data['Fajr'] : null;
    _dhuhr = data['Dhuhr'] != null ? data['Dhuhr'] : null;
    _asr = data['Asr'] != null ? data['Asr'] : null;
    _sunset = data['Sunset'] != null ? data['Sunset'] : null;
    _maghrib = data['Maghrib'] != null ? data['Maghrib'] : null;
    _isha = data['Isha'] != null ? data['Isha'] : null;
    _midnight = data['Midnight'] != null ? data['Midnight'] : null;
  }

  // ignore: non_constant_identifier_names
  String get Imsak => _imsak;
  // ignore: non_constant_identifier_names
  String get Sunrise => _sunrise;
  // ignore: non_constant_identifier_names
  String get Fajr => _fajr;
  // ignore: non_constant_identifier_names
  String get Dhuhr => _dhuhr;
  // ignore: non_constant_identifier_names
  String get Asr => _asr;
  // ignore: non_constant_identifier_names
  String get Sunset => _sunset;
  // ignore: non_constant_identifier_names
  String get Maghrib => _maghrib;
  // ignore: non_constant_identifier_names
  String get Isha => _isha;
  // ignore: non_constant_identifier_names
  String get Midnight => _midnight;
}
