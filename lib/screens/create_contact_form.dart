import 'package:flutter/material.dart';


class CreateContactForm extends StatefulWidget {
  CreateContactForm({Key key}) : super(key: key);
  static String routeName= 'createContact';

  @override
  _CreateContactFormState createState() => _CreateContactFormState();
}

class _CreateContactFormState extends State<CreateContactForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('data'),
    );
  }
}