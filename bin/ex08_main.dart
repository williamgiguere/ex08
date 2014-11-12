import 'package:ex08/ex08_functions.dart';
import 'package:ex08/ex08_class_model.dart';

main() {
  
// Main for # 1 
  var members = [
   {'associationName': '1', 'firstName': 'Bob', 'lastName': 'Dart', 'email': 'bd@gmail.com'},
   {'associationName': '1', 'firstName': 'Joe', 'lastName': 'Java', 'email': 'jm@gmail.com'},
   {'associationName': '2', 'firstName': 'Charles', 'lastName': 'Dart', 'email': 'cd@gmail.com'},
   {'associationName': '2', 'firstName': 'Steve', 'lastName': 'Jobs', 'email': 'cd@gmail.com'}
   ];
  
  print("\n------------EX08-1-------------\n");
  print("Part #1 :\nSort by Last Names (associastion 1):");
  print ('${sortByLastName(members, "1")}');
  print("Sort by Last Names (associastion 2):");
  print ('${sortByLastName(members, "2")}');
  String letter = 'j';  
  print("Part #2 :\nLast names starting with a $letter:");
  print ('${lastNameStartsWith(members, letter)}\n');

//Main for # 2
  //Using the same list (members) as #1 and a new member named 'John'
  var association1 = new association('Association n.1', 'This is the first association',[]);
  
  var john = new member('John', 'Doe', 'jd@gmail.com');
  var bob = new member('Bob', 'Doe', 'bd@gmail.com');
  var jane = new member('Jane', 'Doe', 'janedoe@gmail.com');
  var suzy = new member('Suzy', 'Doe', 'sd@gmail.com');
  
  
  print("------------EX08-2-------------");
  print("Part #1 :\nAdding new members (JOHN, BOB, JANE & SUZY):");
  association1.addMember(john);
  association1.addMember(bob);
  association1.addMember(jane);
  association1.addMember(suzy);
  print ('$association1');
  
  print("\nPart #2 :\nRemoving a member (JOHN):");
  association1.removeMember(john);
  print ('$association1');
  
  print("\nPart #3 :\nEditing a member (switching john's email to :johndoe@gmail.com :");
  john.editEmail('johndoe@gmail.com');
  print ('$john');  
}



