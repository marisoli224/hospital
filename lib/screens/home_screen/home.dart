import 'dart:core';

import 'package:flutter/material.dart';

import '../../models/my_category.dart';
import '../../models/my_doctor.dart';
import 'catigories/category.dart';
import 'catigories/category_widget.dart';
import 'doctors/doctor_widget.dart';
import 'doctors/top_doctors.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var quary;
  List<CetegoryCard> category = [
    CetegoryCard(MyCategory(image: 'assets/images/bone.png', name: 'bone')),
    CetegoryCard(MyCategory(image: 'assets/images/brains.png', name: 'brains')),
    CetegoryCard(MyCategory(image: 'assets/images/eye.png', name: 'eye')),
    CetegoryCard(MyCategory(image: 'assets/images/heart.png', name: 'heart')),
    CetegoryCard(MyCategory(image: 'assets/images/joint.png', name: 'joint')),
  ];
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
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            height: 50,
            child: TextFormField(
              onChanged: (String? value) {
                quary = value ?? '';
                setState(() {});
              },
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 24,
                ),
                hintText: 'search',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Text(
                  'My Appointments',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.yellowAccent),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Categories.routeName);
                },
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 120.0,
                    child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                         category[index]
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Top doctors',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, TopDoctors.routeName);
                },
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: doctors.length,
                      itemBuilder: (BuildContext context, int index) =>  doctors[index]

                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
