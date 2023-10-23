import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon iconLeft;
  final Icon iconRight;
  final Function() onMenuPressed;
  final Function() onNotificationsPressed;

 const CustomAppBar({super.key, 
    required this.title,
    required this.onMenuPressed,
    required this.onNotificationsPressed,
    required this.iconLeft,
    required this.iconRight
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: iconLeft,
            onPressed: onMenuPressed,
          ),
          Text(title, style: const TextStyle(fontSize: 44,color: Colors.black, fontFamily:'impact', fontStyle: FontStyle.italic )),
          IconButton(
            icon: iconRight,
            onPressed: onNotificationsPressed,
          ),
        ],
      ),
    );
  }

   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}