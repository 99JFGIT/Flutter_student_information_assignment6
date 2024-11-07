//model class
class Note {
  int? id;
  String? studentname;
  String? studentid;
  String? phone;
  String? email;
  String? location;

  //constructor
  Note({
    this.id,
    this.studentname,
    this.studentid,
    this.phone,
    this.email,
    this.location,
  });


  //for saving data to db
  //name must be same as table name in db
  Map<String, dynamic> toMap() {
    return {
      'student_name': studentname,
      'student_id': studentid,
      'phone': phone,
      'email': email,
      'location': location,
    };
  }

  //for retrieving data from db
  static Note fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      studentname: map['student_name'],
      studentid: map['student_id'],
      phone: map['phone'],
      email: map['email'],
      location: map['location'],
    );
  }
}