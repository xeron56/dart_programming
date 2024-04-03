import 'dart:collection';

class CommunityCenter {
  // HashMap to store program memberships where key is program name and value is HashSet of member IDs
  HashMap<String, HashSet<int>> programMemberships = HashMap<String, HashSet<int>>();

  // Method to enroll member in a program
  void enrollMember(String programName, int memberId) {
    // Check if program exists in HashMap, if not, create a new HashSet for the program
    if (!programMemberships.containsKey(programName)) {
      programMemberships[programName] = HashSet<int>();
    }

    // Get the HashSet of member IDs for the program
    HashSet<int> members = programMemberships[programName]!;

    // Check if member ID is already enrolled in the program
    if (!members.contains(memberId)) {
      members.add(memberId);
      print('Enrollment successful for member ID $memberId in program: $programName');
    } else {
      print('Member ID $memberId is already enrolled in program: $programName');
    }
  }
}

void main() {
  CommunityCenter center = CommunityCenter();

  // Enrolling members in programs
  center.enrollMember('Fitness Classes', 1001); // Enrollment successful
  center.enrollMember('Fitness Classes', 1002); // Enrollment successful
  center.enrollMember('Art Workshops', 1001); // Enrollment successful
  center.enrollMember('Fitness Classes', 1001); // Member ID 1001 is already enrolled
  center.enrollMember('Language Courses', 1003); // Enrollment successful

  // Displaying program memberships
  print(center.programMemberships);
}