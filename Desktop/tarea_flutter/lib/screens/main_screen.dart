import 'package:flutter/material.dart';
import 'package:tarea_flutter/widgets/navbar.dart';


class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        title: 'REPRESENT',
        onMenuPressed: () {
        },
        onNotificationsPressed: () {
        },
        iconLeft: const Icon(Icons.menu,color: Colors.black,),
        iconRight: const Icon(Icons.search, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/img1.jpeg'),
          const SizedBox(height: 20),
          Image.asset('assets/img2.jpeg'),
          const SizedBox(height: 20),
          Image.asset('assets/img3.jpeg'),
          const SizedBox(height: 20)
        ]
      ),
      )
    );
  }
}