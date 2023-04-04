import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Hello"),
      bottom: TabBar(tabs: [
        Tab(
          icon: Icon(Icons.home),
          text: 'Test',
        ),
        Tab(
          icon: Icon(Icons.home),
          text: 'Test',
        ),
        Tab(
          icon: Icon(Icons.home),
          text: 'Test',
        ),
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
