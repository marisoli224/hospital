
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospital/providers/my_provider.dart';
import 'package:hospital/screens/appointement/appointement_screen.dart';
import 'package:hospital/screens/chat_screen/Messages.dart';
import 'package:hospital/screens/login/login_screen.dart';
import 'package:hospital/screens/profile_screen/profile.dart';
import 'package:provider/provider.dart';


import 'screens/home_screen/home.dart';



class HomeLayout extends StatefulWidget {

static String routeName ="HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {


    return  SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.lightBlue[200],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: Text("Hospitaline"),
            actions: [
              IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  },
                  icon: Icon(Icons.logout,color: Colors.red,size: 29,))
            ],
          ),
       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.blue,
         unselectedItemColor: Colors.white,
         currentIndex: currentIndex,
         onTap: (index){
           currentIndex=index;
           setState(() {

           });
         },
         //backgroundColor:Colors.black,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Calender",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.message),label: "chat",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.grey),
         ],
       ),
        body:tabs[currentIndex]
      ),
    );
  }
  List<Widget> tabs=[
    Home(),Appointments(),Messages(),Profile()
  ];
}
