import 'package:flutter/material.dart';

class MainAppBarDrawer extends StatelessWidget {
  final param;
  const MainAppBarDrawer({this.param});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CheckboxListTile(
            title: Text('Allow resize?'),
            value: param.resizeAllow,
            onChanged: (bool v) {
              param.resizeAllow = v;
            },
          ),
          CheckboxListTile(
            title: Text('Allow change primer color?'),
            value: param.colorAllow,
            onChanged: (bool v) {
              param.colorAllow = v;
            },
          ),
        ],
      ),
    );
  }
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final param;
  const MainAppBar({this.param});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: Text('My Icon', style: TextStyle(fontSize: 18.0)),
      actions: [
        if (param.resizeAllow == true)
          Container(
            child: IconButton(
              onPressed: () {
                if (param.bodyIconSize > 100) {
                  param.bodyIconSize -= 50;
                }
              },
              icon: Icon(Icons.remove_circle),
            ),
          ),
        if (param.resizeAllow == true)
          Container(
            child: IconButton(
              onPressed: () {
                param.bodyIconSize = 100;
              },
              icon: new Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'S',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (param.resizeAllow == true)
          Container(
            child: IconButton(
              onPressed: () {
                param.bodyIconSize = 300;
              },
              icon: new Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'M',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (param.resizeAllow == true)
          Container(
            child: IconButton(
              onPressed: () {
                param.bodyIconSize = 500;
              },
              icon: new Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'L',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (param.resizeAllow == true)
          Container(
            child: IconButton(
              onPressed: () {
                if (param.bodyIconSize < 500) {
                  param.bodyIconSize += 50;
                }
              },
              icon: new Icon(Icons.add_circle),
            ),
          ),
      ],
    );
  }
}
