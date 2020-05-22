import 'package:flutter/material.dart';

class ActivityTile extends StatefulWidget {
  ActivityTile({Key key, this.activity}) : super(key: key);
  final activity;
  @override
  _ActivityTileState createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Text('this is activity tile'),
      ),
    );
  }
}