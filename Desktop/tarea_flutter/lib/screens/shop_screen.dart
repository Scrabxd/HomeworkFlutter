import 'package:flutter/material.dart';
import 'package:tarea_flutter/widgets/navbar.dart';
import 'package:http/http.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title:'FW19', onMenuPressed: (){}, onNotificationsPressed: (){}, 
      iconLeft: const Icon(Icons.arrow_back, color: Colors.black,), 
      iconRight: const Icon(Icons.crop_square , color:Colors.black 
        )
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two items per row
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: 6, // Number of items in the grid
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue, // Change to your desired widget or content
            height: 100.0, // Adjust the height as needed
          );
        },
      ),
    );
  }
}