import 'package:agent_app/screens/contacts_list_view.dart';
import 'package:agent_app/screens/home_view.dart';
import 'package:agent_app/screens/listing_view.dart';
import 'package:agent_app/screens/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';


class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];

class _MainViewState extends State<MainView> {
  final tabDetails = [
    {'icon': OMIcons.home,'label': 'Home','view': HomeView()},
    {'icon': OMIcons.business, 'label': 'Listings', 'view': ListingView()},
    {'icon': OMIcons.group, 'label': 'Contacts', 'view': ContactsListView()},
    {'icon': Icons.more_horiz, 'label': 'More', 'view': SettingsView()},
  ];

  List<Widget> _tabs(Color primaryColor) {
    return tabDetails
        .map((menuItem) => Tab(
              icon: Icon(menuItem['icon']),
              text: menuItem['label'],
            ))
        .toList();
  }

  List<Widget> _tabViews() {
    return tabDetails.map((item) => item['view'] as Widget).toList();
  }

  
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    Color indicatorColor = Theme.of(context).colorScheme.secondary;

    return DefaultTabController(
      length: tabDetails.length,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _tabViews(),
          ),
          bottomNavigationBar: TabBar(
            tabs: _tabs(primaryColor),
            indicatorColor: indicatorColor,
            indicatorWeight: 4.0,
            labelColor: indicatorColor,
            unselectedLabelColor: Colors.black45,
          ),
        ),
      )
    );
  }
}