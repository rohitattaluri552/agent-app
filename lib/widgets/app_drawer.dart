import 'package:agent_app/screens/contact_view.dart';
import 'package:agent_app/screens/listing_view.dart';
import 'package:agent_app/screens/settings_view.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Agent App'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Listings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext bc) => ListingView()),
              );
            },
          ),
          ListTile(
            title: Text('Contacts'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext bc) => ContactView()),
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext bc) => SettingsView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
