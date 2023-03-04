

import 'my_appointement.dart';

class MyUser {
  static const String COLLECTION_NAME = "Users";

  String id;
  String fName;
  String lName;
  String userName;
  String email;
  List<MyAppointment>?  appointments;

  MyUser(
      {required this.id,
      required this.fName,
      required this.lName,
      required this.userName,
      required this.email,
       this.appointments});

  MyUser.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          fName: json['fName'],
          lName: json['lName'],
          userName: json['userName'],
          email: json['email'],
          appointments: json ['appointments'],
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fName": fName,
      "lName": lName,
      "userName": userName,
      "email": email,
      "appointments" : appointments,
    };
  }
}
