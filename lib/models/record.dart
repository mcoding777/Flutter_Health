import 'package:intl/intl.dart';

// 운동 기록
class ExerciseSet {
  late int set;
  late String before; // 이전에 저장한 기록
  late int kg;
  late int rep; // 이번 운동 횟수

  ExerciseSet({
    required this.set,
    required this.before,
    required this.kg,
    required this.rep,
  });
}

String getToday(DateTime now) {
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  String today = formatter.format(now);
  return today;
}

// 날짜별 레코드
class TodayRecord {
  DateTime date = DateTime.now();
  late String workout; // 운동 이름
  late List<ExerciseSet> records; // 해당 날짜에 해당 운동을 한 기록
  int? max;

  TodayRecord({
    required this.workout,
    required this.records,
  });

  // max 값 구하기
  setMax() {
    int currentMax = 0;
    for (int index = 0; index < records.length; index++) {
      int kg = records[index].kg;
      if (kg > currentMax) {
        currentMax = kg;
      }
    }
    max = currentMax;
  }

  // json 양식
  Map<String, dynamic> toMap() {
    return {
      'date': getToday(date),
      'workout': workout,
      'records': records,
      'max': max
    };
  }
}
