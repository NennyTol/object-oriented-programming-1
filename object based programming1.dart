import 'dart:io';

// Step 1: Define an interface
abstract class Printable {
  void printInfo();
}

// Step 2: Define a base class with inheritance
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name makes a sound');
  }
}

// Step 3: Implement a subclass that overrides a method
class Dog extends Animal implements Printable {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }

  @override
  void printInfo() {
    print('Dog: $name, Breed: $breed');
  }
}

// Step 4: Create an instance of a class initialized with data from a file
Dog createDogFromFile(String fileName) {
  var file = File(fileName);
  var lines = file.readAsLinesSync();

  var name = lines[0];
  var breed = lines[1];

  return Dog(name, breed);
}

// Step 5: Demonstrate the use of a loop
void demonstrateLoop() {
  for (var i = 0; i < 3; i++) {
    print('Loop iteration: $i');
  }
}

void main() {
  // Step 4: Create an instance of Dog initialized from a file
  var dog = createDogFromFile('C:/Users/REFINERS SCHOOLS/OneDrive/Desktop/object based programming 1/dog.txt');
  dog.makeSound();
  dog.printInfo();

  // Step 5: Demonstrate the use of a loop
  demonstrateLoop();
}
