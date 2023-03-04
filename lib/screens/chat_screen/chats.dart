import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  static String routeName ='Chats';
  List<Map> mylist=[
    {
      'img':'assets/images/splash.jpg',
      'title':'Rahma ahmed',
      'subtitle':'flowres'
    },
    {
      'img':'assets/images/plants.jpg',
      'title':'Randa Ahmed',
      'subtitle':'flower'
    },
    {
      'img':'assets/images/plants4.jpg',
      'title':'Kholod Ahmed',
      'subtitle':'tomatoes'
    },
    {
      'img':'assets/images/plants2.jpg',
      'title':'Rahma ahmed',
      'subtitle':'Eggplant'
    },
    {
      'img':'assets/images/splash.jpg',
      'title':'Randa Ahmed',
      'subtitle':'flower'
    },
    {
      'img':'assets/images/plants4.jpg',
      'title':'Kholod Ahmed',
      'subtitle':'Mint'
    },
    {
      'img':'assets/images/splash.jpg',
      'title':'Rahma ahmed',
      'subtitle':'flowres'
    },
    {
      'img':'assets/images/plants.jpg',
      'title':'Randa Ahmed',
      'subtitle':'flower'
    },
    {
      'img':'assets/images/plants4.jpg',
      'title':'Kholod Ahmed',
      'subtitle':'tomatoes'
    },
    {
      'img':'assets/images/plants2.jpg',
      'title':'Rahma ahmed',
      'subtitle':'Eggplant'
    },
    {
      'img':'assets/images/splash.jpg',
      'title':'Randa Ahmed',
      'subtitle':'flower'
    },
    {
      'img':'assets/images/plants4.jpg',
      'title':'Kholod Ahmed',
      'subtitle':'Mint'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Chating"),
      ),
      body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/plants3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          //color: Colors.blueGrey,
          child: ListView(

            children: [
              Column(
                children: [
                  for(int i=0;i<mylist.length;i++)

                    Card(
                      color: Colors.transparent,
                      elevation: 1,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(mylist[i]['img']),
                        ),
                        title:  Text(mylist[i]['title'].toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text(mylist[i]['subtitle']+'...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),

                      ),
                    )
                ],
              ),
            ],
          )
      ),

    );
  }
}