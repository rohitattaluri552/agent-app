import 'package:agent_app/constants/styles.dart';
import 'package:agent_app/screens/contact_view.dart';
import 'package:agent_app/screens/create_contact_form.dart';
import 'package:agent_app/screens/listing_item_view.dart';
import 'package:agent_app/screens/main_view.dart';
import 'package:agent_app/widgets/add_or_edit_note.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[400]
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Style.avnuTheme,
      home: MainView(),
      routes: {
        ListingItemView.routeName: (context) => ListingItemView(),
        ContactView.routeName: (context) => ContactView(),
        AddOrEditNote.routeName: (context) => AddOrEditNote(),
        CreateContactForm.routeName: (context) => CreateContactForm(),
      }
    );
  }
}

