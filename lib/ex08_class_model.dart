library model;

/*2.Create a class model with associations and members. The same member may belong to 
different associations. Provide the maintenance of the model by providing additions, 
removals and updates of entities. 

From scratch:
https://github.com/dzenanr/association
With dartlero:
https://github.com/dzenanr/association_members
*/

class association {
  String name;
  String description;
  List members;
  
  association(this.name, this.description, this.members);
  
  //Adding members
  addMember(member newMember) {
    members.add(newMember);
  }
  
  //Removing members
  removeMember(member oldMember) {      
    members.remove(oldMember);
  }
  
  String toString() {
    return '=======================================================\n'
           'Association \n'
           'Name : ${name}\n'
           'Description : ${description}\n'
           'Members : ${members}\n'
           '========================================================';
  }
    
}



class member {
  String firstName;
  String lastName;
  String email;

  member(this.firstName, this.lastName, this.email); 

  //Edit member's name 
  editFirstName(String newFirstName) {
    firstName = newFirstName;
  }

  //Edit member's name 
  editLastName(String newLastName) {
    lastName = newLastName;
  }
  
  
  //Edit member's name 
  editEmail(String newEmail) {
    email = newEmail;
  }
    
  String toString() {
    return '\nFirst Name: ${firstName} || Last Name: ${lastName} || Email: ${email}';
  }
  
}





