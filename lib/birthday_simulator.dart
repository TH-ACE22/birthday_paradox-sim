import 'dart:math';

class BirthdaySimulator {
  final Random _random = Random();

  // Run Monte Carlo simulation for given number of people and trials
  double estimateProbability(int numPeople, int trials) {
    int sharedBirthdayCount = 0;

    for (int t = 0; t < trials; t++) {
      Set<int> birthdays = {};

      for (int i = 0; i < numPeople; i++) {
        int day = _random.nextInt(365); // 0–364
        if (birthdays.contains(day)) {
          sharedBirthdayCount++;
          break;
        }
        birthdays.add(day);
      }
    }

    return sharedBirthdayCount / trials;
  }
}
