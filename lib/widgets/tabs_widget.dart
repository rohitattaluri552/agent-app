import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  
  TabsWidget({
    this.tabBarViews,
    this.tabs,
    this.needPadding = true,
    this.getTabIndex, 
    this.view,
    this.initialTab,
  });
  
  final List tabBarViews;
  final List tabs;
  final bool needPadding;
  final Function(int) getTabIndex;
  final String view;
  final int initialTab;

  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> with SingleTickerProviderStateMixin  {
  TabController _tabController;

  @override
  void initState() { 
    _tabController = TabController(vsync: this, length: widget?.tabs?.length, initialIndex: widget?.initialTab ?? 0);
    
    // Getting the current tab index and passing back to the parent widget using getTabIndex function
    _tabController.addListener(() {
      setState(() => widget.getTabIndex(_tabController.index));
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: widget.needPadding ? EdgeInsets.only(top:16.0,left: 16.0,right: 16.0) : EdgeInsets.all(0.0),
          color: widget.view == 'contactView' ? Colors.grey[100] : Theme.of(context).canvasColor,
          child: TabBar (
            controller: _tabController,
            indicatorColor: Theme.of(context).colorScheme.primary,
            labelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelColor: Theme.of(context).primaryColor,
            tabs: List<Widget>.generate(widget?.tabs?.length, (int index) {
                return Tab (
                  child: Text(widget?.tabs[index],
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0
                      ),
                    )
                );
              },
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: TabBarView (
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: List<Widget>.from(widget.tabBarViews).where((w) => w!= null).map((f) => f).toList(),
          ),
        ),
      ],
    );
  }
}

