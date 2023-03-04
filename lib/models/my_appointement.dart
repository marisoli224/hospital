

import 'my_doctor.dart';
import 'my_user.dart';

class MyAppointment {
  static const String COLLECTION_NAME = "Appointments";

  String id;
  String date ;
  String day ;
  String time ;
  MyDoctor doctor ;
  String userId;
  bool  isDone = false;


  MyAppointment(
      { this.id = '',
        required this.date,
        required this.day,
        required this.time,
        required this.doctor,
        required this.userId,
        required this.isDone
       });

  MyAppointment.fromJson(Map<String, dynamic> json)
      : this(
    id: json['id'],
    date: json['date'],
    day: json['day'],
    time: json['time'],
    doctor: json['doctor'],
    userId: json['userId'],
    isDone: json['isDone']

  );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "date": date,
      "day" : day,
      "time": time,
      "doctor":doctor,
      "userId":userId,
      "isDone":isDone
    };
  }
}