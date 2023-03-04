
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../database_utils/database_utils.dart';
import '../../models/my_appointement.dart';
import '../../models/my_doctor.dart';
import '../../models/my_user.dart';
import '../../providers/my_provider.dart';
import 'appointment_widget.dart';
import 'date_widget.dart';

class Appointments extends StatefulWidget {
  static String routeName ='appointment';



  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {


  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of(context);
    var user = provider.myUser;

    return Scaffold(
        backgroundColor: Colors.lightBlue[200],
        body: StreamBuilder<QuerySnapshot<MyAppointment>>(
          stream: DataBaseUtils.getAppointmentsFromFirestore(user?.id??""),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("something went wrong"));
            }

            List<MyAppointment>? appointments = snapshot.data?.docs
                .map((element) => element.data())
                .toList();

            return ListView.builder(
              itemBuilder: (context, index) {
                return AppointmentCard(appointment: appointments![index],);
              },
              itemCount: appointments?.length ?? 0,
            );
          },
        ));
  }


}
















