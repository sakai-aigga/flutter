class studentInfo {
  String name;
  int age;
  double mark1, mark2, mark3, avg = 0.00;
  studentInfo(this.name, this.age, this.mark1, this.mark2, this.mark3);
  Future<void> calculateAverage() async {
    avg = (mark1 + mark2 + mark3) / 3;
    print('Your average marks in three subjects is: $avg');
    await Future.delayed(Duration(seconds: 2));
  }

  void getGrade() {
    if (avg >= 90) {
      print('Grade: A');
    } else if (avg >= 80) {
      print('Grade: B');
    } else if (avg >= 70) {
      print('Grade: C');
    } else if (avg >= 60) {
      print('Grade: D');
    } else {
      print('You have a very low grade.');
    }
  }
}

Future<void> main() async {
  studentInfo s1 = studentInfo('Sajin', 20, 50, 60, 78);
  await s1.calculateAverage();
  s1.getGrade();
  studentInfo s2 = studentInfo('Ram', 21, 70, 80, 90);
  await s2.calculateAverage();
  s2.getGrade();
  studentInfo s3 = studentInfo('Shyam', 22, 40, 60, 80);
  await s3.calculateAverage();
  s3.getGrade();
}
