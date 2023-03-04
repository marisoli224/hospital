import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/my_appointement.dart';
import '../../models/my_doctor.dart';
import 'date_widget.dart';

class AppointmentCard extends StatelessWidget {
  MyAppointment appointment ;



  AppointmentCard({required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(appointment.doctor.image),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     appointment.doctor.name,
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                    appointment.doctor.category,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            DateCard(appointment: appointment,),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    child: Text('Done',style: TextStyle(
                      color: appointment.isDone? Colors.blue : Colors.green
                    )),
                    onPressed: () {
                      appointment.isDone = true;
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    child: Text('edit'),
                    onPressed: () => {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
