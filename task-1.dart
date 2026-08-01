void main() {
  const String schoolName = 'Tech University';

  final int studentId = 123;
  final String studentName = 'Youssef Ahmed';

  int age = 18;
  double gpa = 3.85;

  String? email;
  String? phoneNumber = '+201234567890';
  String? nickname;

  nickname ??= 'Dev Youssef';

  print('====================================');
  print('     STUDENT INFORMATION PROGRAM    ');
  print('====================================');
  print('School: $schoolName');
  print('Student ID: $studentId');
  print('Name: $studentName');
  print('Nickname: $nickname');
  print('Age: $age years old');
  print('GPA: $gpa');
  print('Email: ${email ?? "Not Provided"}');
  print('Phone: ${phoneNumber ?? "Not Provided"}');
  print('Email Length: ${email?.length ?? 0}');
  print('====================================');
}
