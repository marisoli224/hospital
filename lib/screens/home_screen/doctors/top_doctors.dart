
import 'package:flutter/material.dart';

import '../../../models/my_doctor.dart';
import 'doctor_widget.dart';

class TopDoctors extends StatelessWidget {
  static String routeName = 'Top doctors';

  List<DoctorCard> doctors = [
    DoctorCard(MyDoctor(
      image: 'assets/images/img.png',
      name: "fared",
      category: 'bone',
      stars: 5,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_1.png',
      name: "Nova",
      category: 'brains',
      stars: 5,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_2.png',
      name: "Hanan",
      category: 'eye',
      stars: 5,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_3.png',
      name: "Ahmed",
      category: 'heart',
      stars: 5,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_4.png',
      name: "Abdulrahman",
      category: 'joint',
      stars: 5,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img.png',
      name: "fady",
      category: 'lunges',
      stars: 4,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_1.png',
      name: "Nivin",
      category: 'lungs',
      stars: 4,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_2.png',
      name: "Hana",
      category: 'muscle',
      stars: 4,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_3.png',
      name: "Adam",
      category: 'neuron',
      stars: 4,
    )),
    DoctorCard(MyDoctor(
      image: 'assets/images/img_4.png',
      name: "Abdulrahman",
      category: 'stomach',
      stars: 4,
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Top Doctors'),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
          itemCount: doctors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return doctors[index];
          },
        ));
  }
}
