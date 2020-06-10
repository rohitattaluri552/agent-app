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
  
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar (
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.grey[100],
        actions: <Widget>[
          FlatButton(
            child: Text('DONE', 
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 15.0,
              ),
            ), 
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Add note', 
          style: TextStyle(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500,
            fontSize: 22.0
          ),
        ),
      ),
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