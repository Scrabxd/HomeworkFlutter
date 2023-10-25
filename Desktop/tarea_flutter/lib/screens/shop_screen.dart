import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea_flutter/models/upperbody.dart';
import 'package:tarea_flutter/screens/loadingScreen.dart';
import 'package:tarea_flutter/services/upperbody_service.dart';
import 'package:tarea_flutter/widgets/navbar.dart';


class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final upperbodyService = Provider.of<UpperbodyService>(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'FW19',
        onMenuPressed: () {},
        onNotificationsPressed: () {},
        iconLeft: const Icon(Icons.arrow_back, color: Colors.black),
        iconRight: const Icon(Icons.crop_square, color: Colors.black),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10.0, 
          mainAxisSpacing: 10.0, 
        ),
        itemCount: upperbodyService.prods.length, 
        itemBuilder: (context, index) {
          
          return CustomCard(upper: upperbodyService.prods[index],);
        },
      ),
    );
  }
}

class CustomCard extends StatelessWidget {

  final Upperbody upper;
  
  const CustomCard({Key? key, required this.upper}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 3, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image(image: AssetImage(upper.pic),), 

          Padding(
            padding: const  EdgeInsets.all(8.0),
            child:Text(upper.name)
          ),
        ],
      ),
    );
  }
}
