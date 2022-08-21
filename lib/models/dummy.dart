import 'record.dart';

// 운동 기록 시 추가하는 set 데이터
List<ExerciseSet> sampleSets = <ExerciseSet>[
  ExerciseSet(set: 1, before: '60kg * 10', kg: 60, rep: 12),
  ExerciseSet(set: 2, before: '80kg * 10', kg: 80, rep: 12),
  ExerciseSet(set: 3, before: '100kg * 5', kg: 100, rep: 5),
  ExerciseSet(set: 4, before: '100kg * 3', kg: 100, rep: 5),
];

// 데이터베이스에 저장될 운동 기록 데이터
List<TodayRecord> sampleRecord = [
  TodayRecord(workout: 'Bench Press', records: sampleSets),
  TodayRecord(workout: 'Incline Chest Press', records: sampleSets),
  TodayRecord(workout: 'Barbell', records: sampleSets),
];
