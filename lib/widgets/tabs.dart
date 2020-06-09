import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  TabsWidget({this.tabBarViews, this.tabs,this.noOfTabs,key}) : super(key: key);
  final List tabBarViews;
  final List tabs;
  final int noOfTabs;
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() { 
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
    super.initState();
  }
  getTabsList(tabs) {
    List<Widget> widgets = tabs.map<Widget>((tabName) => Tab(child: Text(tabName, style: TextStyle(fontSize: 18.0),),)).toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top:16.0,left: 16.0,right: 16.0),
          color: Theme.of(context).canvasColor,
          child: TabBar (
            controller: _tabController,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            labelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelColor: Theme.of(context).primaryColor,
            tabs: getTabsList(widget?.tabs),
          ),
        ),
        Flexible (
          child: TabBarView (
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: widget.tabBarViews,
          ),
        ),
      ],
    );
  }
}

