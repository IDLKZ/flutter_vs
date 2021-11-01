import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visitapp/presentation/widgets/constants.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<MyDrawer> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Drawer(
      child: SafeArea(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'VISIT',
                style: TextStyle(color: kColorMain, fontSize: 24),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Главная'),
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
            ),
            ListTile(
              leading: Icon(Icons.wallpaper),
              title: Text('Новости'),
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Афиша'),
              selected: _selectedDestination == 2,
              onTap: () => selectDestination(2),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Путеводитель'),
              selected: _selectedDestination == 3,
              onTap: () => selectDestination(3),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Блог'),
              selected: _selectedDestination == 4,
              onTap: () => selectDestination(4),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Личный кабинет'),
              selected: _selectedDestination == 5,
              onTap: () => selectDestination(5),
            ),
          ],
        ),
      ),
    );
  }


  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }

}
