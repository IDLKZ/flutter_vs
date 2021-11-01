import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget  {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  new Size.fromHeight(64);
}

class _MyAppBarState extends State<MyAppBar>  {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xffe7705d),
      title: Text("Visit Shymkent"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.qr_code)),
        IconButton(onPressed: (){}, icon: Icon(Icons.language_rounded)),
      ],
      
    );
  }
}
