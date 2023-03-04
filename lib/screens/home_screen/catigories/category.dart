
import 'package:flutter/material.dart';

import '../../../models/my_category.dart';
import 'category_widget.dart';

class Categories extends StatelessWidget {
  static String routeName = 'Category';
  List<CetegoryCard> category = [
    CetegoryCard(MyCategory( image: 'assets/images/bone.png', name: 'bone')),
    CetegoryCard(MyCategory( image: 'assets/images/brains.png', name: 'brains' )),
    CetegoryCard(MyCategory( image: 'assets/images/eye.png', name:  'eye')),
    CetegoryCard(MyCategory( image:  'assets/images/heart.png', name: 'heart' )),
    CetegoryCard(MyCategory( image:'assets/images/joint.png' , name:  'joint' )),
    CetegoryCard(MyCategory( image: 'assets/images/lunges.png', name:'lunges' )),
    CetegoryCard(MyCategory( image:'assets/images/lungs.png' , name: 'lungs')),
    CetegoryCard(MyCategory( image: 'assets/images/muscle.png', name: 'muscle')),
    CetegoryCard(MyCategory( image: 'assets/images/neuron.png', name:  'neuron')),
    CetegoryCard(MyCategory( image:  'assets/images/stomach.png', name: 'stomach' )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Categories'),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: category.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 8.0 / 10.0,
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return category[index];
            },
          ),
        ));
  }
}
