// Creating a Class
class studentDetails {
  String name;
  double mark1, mark2, mark3, total = 0.00, avg = 0.00;

  studentDetails(
    this.name,
    this.mark1,
    this.mark2,
    this.mark3,
  ); //Initialized Variables
  //Function for average calculation
  void calculateTotalAndAverage() {
    total = mark1 + mark2 + mark3;
    avg = total / 3;
    print('Total marks obtained by $name is: $total');
    print('Average marks obtained by $name is $avg');
  }

  //Function to display Grade according to the average marks obtained
  void DisplayGrade() {
    if (avg >= 80) {
      print("You obtained Grade A");
    } else if (avg >= 60) {
      print("You obtained Grade B");
    } else if (avg >= 40) {
      print("You obtained Grade C");
    } else {
      print("Failed!!! Grade F");
    }
  }
}

//Main Function
void main() {
  //Object S1 of the sutdentDetails Class
  studentDetails s1 = studentDetails("Ram", 80, 90, 70);
  s1.calculateTotalAndAverage();
  s1.DisplayGrade();
  print("\n");
  //Object S2 of the sutdentDetails Class
  studentDetails s2 = studentDetails("Shyam", 60, 50, 40);
  s2.calculateTotalAndAverage();
  s2.DisplayGrade();
}
