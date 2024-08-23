import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_provider/app_provider.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            child: Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.ac_unit, color: Colors.white, size: 40),
                    SizedBox(width: 8),
                    Text(
                      'PCNC',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                      icon: Icon(Icons.settings),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              context.read<AppProvider>().logout(context);
            },
          ),
        ],
      ),
    );
  }
}
