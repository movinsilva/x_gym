/*
* Created by sandev on 2020/09/27
* */

import 'dart:async';

class ExerciseDetailsRepository {

  // for the duration
  static final duration = const Duration(seconds: 1);
  // stopwatch instant
  static final stopwatch = Stopwatch();

  static startTimer() {
    Timer(duration, runStopWatch);
  }

  static void runStopWatch() {
    if (stopwatch.isRunning) {
      startTimer();
    }

  }
}