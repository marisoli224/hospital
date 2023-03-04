
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hospital/providers/my_provider.dart';
import 'package:hospital/screens/appointement/appointement_screen.dart';
import 'package:hospital/screens/appointement/booking_page.dart';
import 'package:hospital/screens/appointement/success_booked.dart';
import 'package:hospital/screens/chat_screen/Messages.dart';
import 'package:hospital/screens/chat_screen/chats.dart';
import 'package:hospital/screens/create_account/create_account.dart';
import 'package:hospital/screens/home_screen/catigories/category.dart';
import 'package:hospital/screens/home_screen/doctors/doctor_details.dart';
import 'package:hospital/screens/home_screen/doctors/top_doctors.dart';
import 'package:hospital/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

import 'home_layout.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await FirebaseFirestore.instance.disableNetwork();



  runApp(
      ChangeNotifierProvider(
        create: (context) => MyProvider(),
          child: MyApp()));
}



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      initialRoute: provider.firebaseUser != null
          ? HomeLayout.routeName
          : LoginScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        BookingPage.routeName: (context) =>BookingPage(),
        AppointmentBooked.routeName : (context) =>AppointmentBooked(),
        SliverDoctorDetail.routeName : (context) =>SliverDoctorDetail(),
        Appointments.routeName:(context) => Appointments(),
        TopDoctors.routeName:(context) => TopDoctors(),
        Messages.routeName:(context) => Messages(),
        Chats.routeName:(context) => Chats(),
        Categories.routeName:(context) => Categories(),
        HomeLayout.routeName:(context)=> HomeLayout(),
        CreateAccountScreen.routeName: (context) => CreateAccountScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),

      },
    );
  }
}
