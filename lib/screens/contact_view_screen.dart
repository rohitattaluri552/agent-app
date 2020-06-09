import 'package:flutter/material.dart';

class ContactViewScreen extends StatefulWidget {
  final contact;
  ContactViewScreen({this.contact,Key key}) : super(key: key);
  static const String routeName = 'contactView/';
  @override
  _ContactViewScreenState createState() => _ContactViewScreenState();
}

class _ContactViewScreenState extends State<ContactViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('contact view item'),
    );
  }
}