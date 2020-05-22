import 'package:flutter/material.dart';

class ListingView extends StatefulWidget {
  ListingView({Key key}) : super(key: key);

  @override
  _ListingViewState createState() => _ListingViewState();
}

class _ListingViewState extends State<ListingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text(' welcome to listing view'),
    );
  }
}
