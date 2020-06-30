import 'package:agent_app/screens/contacts_list_view.dart';
import 'package:agent_app/screens/home_view.dart';
import 'package:agent_app/screens/listing_view.dart';
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


class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {
  
  TabController _tabController;
  int tabIndex = 0;
  void initState() { 
    _tabController = TabController(vsync: this, length: tabDetails.length, initialIndex: 0);
    
    // Getting the current tab index and passing back to the parent widget using getTabIndex function
    _tabController.addListener(() {
      setState(() => tabIndex = _tabController.index);
    });
    super.initState();
  }

  final tabDetails = [
    {'icon': OMIcons.home,'label': 'Home','view': HomeView()},
    {'icon': OMIcons.business, 'label': 'Listings', 'view': ListingView()},
    {'icon': OMIcons.group, 'label': 'Contacts', 'view': ContactsListView()},
  ];

  List<Widget> _tabs(Color selectedMenuColor, {Color unSelectedMenuColor,int currentTabIndex}) {
    return tabDetails
      .map((menuItem) => tabDetails.indexOf(menuItem) == currentTabIndex
          ? Tab(
              icon: Icon(menuItem['icon'], color: selectedMenuColor),
              text: menuItem['label'],
            )
          :  Tab(
              icon: Icon(menuItem['icon'], color: unSelectedMenuColor),
              text: menuItem['label'],
            ),
          )
      .toList();
  }

  List<Widget> _tabViews() {
    return tabDetails.map((item) => item['view'] as Widget).toList();
  }

  
  @override
  Widget build(BuildContext context) {
    Color indicatorColor = Theme.of(context).colorScheme.secondary;
    Color labelColor = Colors.black;
    Color unSelectedColor = Color(0xff7A7E85);
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
            controller: _tabController,
            tabs: _tabs(indicatorColor),
            indicatorColor: indicatorColor,
            indicatorWeight: 0.1,
            labelColor: labelColor,
            labelStyle: TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelColor: unSelectedColor,
          ),
        ),
      )
    );
  }
}