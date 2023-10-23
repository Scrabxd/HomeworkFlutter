import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea_flutter/screens/main_screen.dart';
import 'package:tarea_flutter/screens/shop_screen.dart';



void main() {
  runApp(const MainApp());
}


// class AppState extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MultiProvider(
//       providers: [ 

//         ],
//         child: const MainApp(),
//     );
//   }
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Routing system app",
      initialRoute: "shop",
      routes: {
        "main":(_) => MainScreen(),
        "shop":(_) => ShopScreen()
      },
    );
  }
}