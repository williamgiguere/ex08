library ex08;

part '../lib/ex08_functions.dart';


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
  var john = new newMember('1', 'John', 'Doe', 'jd@gmail.com');
  
  print("------------EX08-2-------------");
  print("Part #1 :\nAdding a new member (JOHN):");
  print ('${addMember(john, members)}');
  print("\nPart #2 :\nRemoving a new member (JOHN):");
  print ('${removeMember(john, members)}');
}


