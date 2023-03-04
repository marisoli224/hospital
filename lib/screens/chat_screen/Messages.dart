import 'package:flutter/material.dart';

import '../home_screen/doctors/top_doctors.dart';





class Messages extends StatelessWidget {
  static String routeName = "Messages";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Messages',
                style: TextStyle(color: Colors.white, fontSize: 22)),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(Icons.search,color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search messages',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: new TopDoctors().doctorsNames.length,
            //       itemBuilder: (BuildContext context , int index){
            //     return ListTile(
            //         leading: CircleAvatar(radius: 30,
            //           backgroundImage: AssetImage(new TopDoctors().myImages[index]),
            //         ),
            //         title: Row(
            //           children: [
            //             Text(new TopDoctors().doctorsNames[index],style: TextStyle(
            //                 color: Colors.white
            //             )),
            //             Spacer(),
            //             Text('12:10',style: TextStyle(
            //                 color: Colors.white
            //             ))
            //           ],
            //         ),
            //         subtitle: Row(
            //           children: [
            //             Text('I am glade that you are doing well',style: TextStyle(
            //                 color: Colors.white
            //             )),
            //             Spacer(),
            //             Icon(Icons.circle,color: Colors.lightBlue,)
            //           ],
            //         ),
            //       );
            //   }
            //   )
            //
            //
            //
            //
            // )
          ],
        ),
      ),
    );
  }
}
