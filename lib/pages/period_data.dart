class PeriodData {
  static final PeriodData _instance = PeriodData._internal();

  factory PeriodData() {
    return _instance;
  }

  PeriodData._internal();

  int daysUntilPeriodEnds = 0;
  int daysUntilNextPeriod = 0;

  void reset() {
    daysUntilPeriodEnds = 0;
    daysUntilNextPeriod = 0;
  }
}
