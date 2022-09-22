import 'package:intl/intl.dart';

DateTime findFirstDateOfTheWeek(DateTime dateTime) {
  return dateTime.subtract(Duration(days: dateTime.weekday - 1));
}

DateTime findLastDateOfTheWeek(DateTime dateTime) {
  return dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
}

String semaine() {
  DateTime today = DateTime.now();
  //DateTime semaine = findFirstDateOfTheWeek(today);
  String semaine =
      DateFormat('dd-MM-yyyy').format(findFirstDateOfTheWeek(today));
  return semaine;
}

String fin() {
  DateTime today = DateTime.now();
  //DateTime semaine = findFirstDateOfTheWeek(today);
  String fin = DateFormat('dd-MM-yyyy').format(findLastDateOfTheWeek(today));
  return fin;
}

String passWeek() {
  DateTime today = DateTime.now();
  //DateTime semaine = findFirstDateOfTheWeek(today);
  var newDate = new DateTime(
      findFirstDateOfTheWeek(today).year,
      findFirstDateOfTheWeek(today).month,
      findFirstDateOfTheWeek(today).day - 1);
  var passDate = findFirstDateOfTheWeek(newDate);
  String passWeek = DateFormat('dd-MM-yyyy').format(passDate);
  return passWeek;
}
