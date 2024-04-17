// Step 1: Create a Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Step 2: Create a Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// Step 3: Create a class to create student and teacher objects
class School {
  void createObjects() {
    // Create a student object
    var student = Student('Alice', 15, '10th');

    // Create a teacher object
    var teacher = Teacher('Mr. Smith', 35, 'Math');

    // Call methods to print information
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of the School class
  var school = School();

  // Call the method to create objects and print information
  school.createObjects();
}
