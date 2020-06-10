import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget implements PreferredSizeWidget{
  TitleBar({Key key,
    this.title,
    this.titleStyle
  }) : super(key: key);
  
  final String title;
  final TextStyle titleStyle;
  
  @override
  _TitleBarState createState() => _TitleBarState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _TitleBarState extends State<TitleBar> {
  bool _showSearch = false;

  @override
  Widget build(BuildContext context) {
    final searchActions = <Widget> [
      IconButton(
        icon: Icon(_showSearch ? Icons.close : Icons.search, color: Theme.of(context).primaryColor,),
        onPressed: () {
          setState(() {
            _showSearch = !_showSearch;
          });
        },
      ) 
    ];
    
    final _actions = searchActions;

    return AppBar (
      backgroundColor: Colors.white,
      brightness: Theme.of(context).brightness,
      elevation: 3.0,
      centerTitle: true,
      actions: _actions,
      title: _showSearch 
              ? Container()
              : Text(
                  widget?.title, style: Theme.of(context).textTheme.title.copyWith(fontSize: 20.0)
                ),
    );
  }
}