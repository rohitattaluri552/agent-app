import 'package:flutter/material.dart';

class AppBarwidget extends StatefulWidget implements PreferredSizeWidget {
  AppBarwidget({
    Key key,
    this.backgroundColor,
    this.title,
    this.actions,
    this.centerTitle,
    this.iconTheme,
    this.actionName,
    this.onChange,
  });

  final String actionName;
  final Color backgroundColor;
  final String title;
  final List<Widget> actions;
  final bool centerTitle;
  final IconTheme iconTheme;
  final Function onChange;


  @override
  _AppBarwidgetState createState() => _AppBarwidgetState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarwidgetState extends State<AppBarwidget> {

  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: widget.iconTheme ?? IconThemeData(
          color: Colors.black, //change your color here
      ),
      centerTitle: widget.centerTitle ?? true,
      backgroundColor: widget.backgroundColor ?? Colors.white,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500,
          fontSize: 22.0
        ),
      ),
      actions: 
      widget.actions ?? [
        FlatButton(
          child: Text(
            widget?.actionName, 
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 15.0,
            ),
          ), 
          onPressed: widget.onChange,
        )
      ],
    );
  }
}