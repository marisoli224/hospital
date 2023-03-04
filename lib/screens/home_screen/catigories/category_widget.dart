
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/my_category.dart';

class CetegoryCard extends StatelessWidget {

  MyCategory category ;


  CetegoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
          border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            category.image,
            width: 100,
            height: 50,
            fit: BoxFit.contain,
          ),
          Text(
            category.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
