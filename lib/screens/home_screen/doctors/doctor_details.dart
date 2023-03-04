import 'package:flutter/material.dart';
import 'package:hospital/models/my_doctor.dart';

import '../../appointement/booking_page.dart';


class SliverDoctorDetail extends StatelessWidget {
  const SliverDoctorDetail({Key? key}) : super(key: key);
  static String routeName = 'details doctors';

  @override
  Widget build(BuildContext context) {
    MyDoctor doctor = ModalRoute.of(context)!.settings.arguments as MyDoctor;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Detail Doctor'),
            backgroundColor: Colors.grey,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(doctor.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctor.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    doctor.category,
                                    style: TextStyle(

                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children:  [
                      NumberCard(
                        label: 'Patients',
                        value: '100+',
                      ),
                      SizedBox(width: 15),
                      NumberCard(
                        label: 'Experiences',
                        value: '10 years',
                      ),
                      SizedBox(width: 15),
                      NumberCard(
                        label: 'Rating',
                        value: '${doctor.stars}',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'About Doctor',

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${doctor.name} is a specialist in internal medicine who specialzed blah blah.',
                    style: TextStyle(

                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blueGrey,
                      ),
                    ),
                    child: Text('Book Appointment'),
                    onPressed: () => {
                    Navigator.of(context).pushNamed(BookingPage.routeName,arguments: doctor)
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}






class NumberCard extends StatelessWidget {
  final String label;
  final String value;

  const NumberCard({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(

                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: TextStyle(

                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


