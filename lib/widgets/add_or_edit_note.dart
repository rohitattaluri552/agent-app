import 'package:agent_app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FormType { edit, create }

final noteFormType = {
  FormType.edit : 'editNote',
  FormType.create: 'createNote'
};

class AddOrEditNote extends StatefulWidget {
  static String routeName = 'addOrEditNote';
  const AddOrEditNote({this.formType,Key key}) : super(key: key);
  final String formType;

  @override
  _AddOrEditNoteState createState() => _AddOrEditNoteState();
}

class _AddOrEditNoteState extends State<AddOrEditNote> {
  
  TextEditingController noteController;
  String note;
  
  @override
  void initState() {
    note = '';
    noteController = TextEditingController(text: note);
    // to track the changes in input
    noteController.addListener(() {
      _setNoteText(noteController.text);
    });
    super.initState();
  }

  void _setNoteText(String val) => setState(() => note = val);

  @override
  Widget build(BuildContext context) {
    
    goBack() {
      Navigator.of(context).pop();
    }
    
    final appBar = AppBarwidget(
      backgroundColor: Colors.grey[100],
      actionName: 'DONE',
      title: 'Add Note',
      centerTitle: true,
      onChange: goBack,
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: appBar,
      body: Container(
        color: Theme.of(context).canvasColor,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              textInputAction: TextInputAction.newline,
              controller: noteController,
              decoration: InputDecoration(
                hintText: 'Contact notes',
                hasFloatingPlaceholder: false,
                fillColor: Theme.of(context).backgroundColor,
                filled: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                hintStyle: TextStyle(
                  color: Theme.of(context).indicatorColor,
                  fontWeight: FontWeight.w400,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
                )
              ),
              maxLines: 4,
              onChanged: _setNoteText,
              keyboardType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}