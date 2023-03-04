
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/my_doctor.dart';
import 'doctor_details.dart';

class DoctorCard extends StatelessWidget {
 MyDoctor doctor;


 DoctorCard(this.doctor);

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: () {
        Navigator.pushNamed(context, SliverDoctorDetail.routeName,arguments: doctor);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
            border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
               doctor.image,
                width: 200, height: 150, fit: BoxFit.fill),
            Text(
              doctor.name,
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "specialist",
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                for (int i = 0; i < doctor.stars; i++)
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                Text("   ${doctor.stars}/5")
              ],
            )
          ],
        ),
      ),
    );























    //   Padding(
    //   padding: EdgeInsets.all(5),
    //   child: Card(
    //       color: Colors.grey,
    //       semanticContainer: true,
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.only(
    //               bottomLeft: Radius.circular(10),
    //               topLeft: Radius.circular(10))),
    //       clipBehavior: Clip.antiAlias,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Expanded(
    //               child: Container(
    //                 margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                   image: DecorationImage(
    //                       image: AssetImage(doctor.image), fit: BoxFit.fill),
    //                 ),
    //               )),
    //           Padding(
    //               padding: EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     doctor.name,
    //                     style: TextStyle(fontSize: 18.0),
    //                   ),
    //                   Text(
    //                     "specialist",
    //                     style: TextStyle(fontSize: 18.0),
    //                   ),
    //                   Row(
    //                     children: [
    //                       for (int i = 0; i < doctor.stars; i++)
    //                         Icon(
    //                           Icons.star,
    //                           color: Colors.yellow,
    //                           size: 12,
    //                         ),
    //                       Text("  ${doctor.stars}/5")
    //                     ],
    //                   )
    //                 ],
    //               )),
    //         ],
    //       )),
    // );
  }
}
