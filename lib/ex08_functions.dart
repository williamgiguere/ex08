part of ex08;


/*1.Create a list of associations of members, where a member is represented as a map 
with the following keys: firstName, lastName and email. Sort the list of members of
a given association first by the last name, then by the first name. Provide a way to 
obtain only members of all associations whose last name starts with a given letter. 
associations = [
  {“name”: “IS”, “description”: “Information Systems”, “members”: 
   [{“firstName”: “Dzenan”, “lastName”: “Ridjanovic”, “email”: “dr@gmail.com”},
    {“firstName”: “Robert”, “lastName”: “Nelson”, “email”: “rn@gmail.com”}]},
  {“name”: “CS”, “description”: “Computer Science”,  “members”: 
   [{“firstName”: “David”, “lastName”: “Curtis”, “email”: “dc@gmail.com”}]}
]
*/
//Part 1 

sortByLastName(List members, association) {
  List sortMembers = new List();
  
  for (var x in members) {
    if (x["associationName"] == association) sortMembers.add(x);
  }
  
  sortMembers.sort((member1, member2) {
     var sort = member1["lastName"].compareTo(member2["lastName"]);
     if (sort != 0) return sort;
     return member1["firstName"].compareTo(member2["firstName"]);
  });
  for (var element in sortMembers) {
    print (element);
  }
  return '';
}
  

//Part 2
lastNameStartsWith(List members, String letter) {
  var lastNames = new List();
  
  String letterUpper = letter.toUpperCase();
  lastNames.add(members.where((m) => m['lastName'].startsWith('$letterUpper')));
  
  for (var y in lastNames) {
    print (y);
  }
  return '';  

}

/*2.Create a class model with associations and members. The same member may belong to 
different associations. Provide the maintenance of the model by providing additions, 
removals and updates of entities. 

From scratch:
https://github.com/dzenanr/association
With dartlero:
https://github.com/dzenanr/association_members
*/



//new class :
class newMember {
  var associationName;
  var firstName;
  var lastName;
  var email;

  newMember(this.associationName, this.firstName, this.lastName, this.email); 
}


//Function to add members : 
addMember(newMember member, List memberlist) {

  memberlist.add({
    "associationName": member.associationName,
    "firstName": member.firstName,
    "lastName": member.lastName,
    "email": member.email});
  
  for (var y in memberlist) {
    print (y);
  }
  return '';
}


//Function to remove members :
removeMember(newMember member, List memberlist) {
  
  memberlist.removeWhere((m) => m['associationName'] == member.associationName && 
    m['firstName'] == member.firstName &&
    m['lastName'] == member.lastName &&
    m['email'] == member.email);
  
  for (var y in memberlist) {
    print (y);
  }
  return '';
}

//Function to edit members :






