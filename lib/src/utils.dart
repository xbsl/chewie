import 'package:rxdart/rxdart.dart';

String formatDuration(Duration position) {
  final ms = position.inMilliseconds;

  int seconds = ms ~/ 1000;
  final int hours = seconds ~/ 3600;
  seconds = seconds % 3600;
  final minutes = seconds ~/ 60;
  seconds = seconds % 60;

  final hoursString = hours >= 10
      ? '$hours'
      : hours == 0
      ? '00'
      : '0$hours';

  final minutesString = minutes >= 10
      ? '$minutes'
      : minutes == 0
      ? '00'
      : '0$minutes';

  final secondsString = seconds >= 10
      ? '$seconds'
      : seconds == 0
      ? '00'
      : '0$seconds';

  final formattedTime = '${hoursString == '00'
      ? ''
      : '$hoursString:'}$minutesString:$secondsString';

  return formattedTime;
}

class Globals {
  static BehaviorSubject<String> captionSubject = BehaviorSubject<String>.seeded("Off");
  static BehaviorSubject<String> videoSubject = BehaviorSubject<String>.seeded("English");
}
