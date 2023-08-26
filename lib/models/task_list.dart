class Task {
  final String taskname;
  late bool isDone;

  Task({required this.taskname, required this.isDone});
  void toggledone() {
    isDone = !isDone;
  }
}
