
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/my_appointement.dart';

class DateCard extends StatelessWidget {

MyAppointment appointment ;


DateCard({required this.appointment});

  @override
  Widget build(BuildContext context) {

    int ts = appointment.date as int;
    var dt = DateTime.fromMillisecondsSinceEpoch(ts);
    var date = DateFormat('EM').format(dt);
    var time =  DateFormat('h:mm').format(dt);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(

                '${date}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_alarm,
                color: Colors.white,
                size: 17,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${time}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}