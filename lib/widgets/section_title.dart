import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this._title,{Key key,this.noLeftPad = false}) : super(key: key);
  final String _title;
  final bool noLeftPad;

  @override 
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only (
        bottom: 16.0,
        left: noLeftPad ? 0 : 16.0,
      ),
      child: Text(
        _title?.toUpperCase(),
        style: Theme.of(context).textTheme.subhead,
      ),
    );
  }
}