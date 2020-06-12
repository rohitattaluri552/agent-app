import 'package:agent_app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class CreateOrEditContact extends StatefulWidget {
  CreateOrEditContact({Key key}) : super(key: key);
  static String routeName = 'createContact';

  @override
  _CreateOrEditContactState createState() => _CreateOrEditContactState();
}

class _CreateOrEditContactState extends State<CreateOrEditContact> {

  GlobalKey<FormState> _createContactformKey = GlobalKey<FormState>();

  

  TextEditingController firstNameController;
  String note;
  
  
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments as Map;
    final formType = args['formType'];
    final contact = args['contact'];
    final formTitle = formType == 'editContact' ? 'Edit contact' : 'Create contact';

    FocusNode f1 = FocusNode();
    FocusNode f2 = FocusNode();
    FocusNode f3 = FocusNode();
    FocusNode f4 = FocusNode();
    FocusNode f5 = FocusNode();
    FocusNode f6 = FocusNode();
    
    saveOrEditForm() {
      setState(() {
        print(_createContactformKey.currentState);
        _createContactformKey.currentState.save();
      });
      print(contact);
    }
    final appBar = AppBarwidget(
      centerTitle: true,
      title: formTitle,
      actionName: 'EDIT',
      onChange: saveOrEditForm,
    );

    // To give the extra space for height
    Widget sizedBox({height,width}){
      return SizedBox(
        height: height ?? 0,
        width: width ?? 0,
      );
    }

    // Input decoration function
    inputDecoration({prefixName, hintText}) {
      return InputDecoration (
        prefixIcon: prefixName != null ? Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0),
          width: 120.0,
          child: Text(
            prefixName,
            style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w500),
          )
        ) : null,
        hintText: hintText,
        hasFloatingPlaceholder: false,
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
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
      );
    }
    // final 
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Theme.of(context).canvasColor,
          child: Form(
            key: _createContactformKey,
            child: Column(
              children: <Widget>[
                // First name field
                TextFormField (
                  controller: firstNameController, 
                  validator: (value) {
                    return contact['firstNames'] ?? 'Please enter a name';
                  },
                  initialValue: contact['firstNames'] ?? '',
                  focusNode: f1,
                  decoration: inputDecoration(prefixName:'First name'),
                  maxLines: 1,
                  onFieldSubmitted: (value) => f2.requestFocus(),
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact['firstNames'] = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                ),
                
                sizedBox(height: 16.0),
                
                // Last name field
                TextFormField (
                  validator: (value) {
                    return contact['lastNames'] ?? 'Please enter a last name';
                  },
                  initialValue: contact['lastNames'] ?? '',
                  focusNode: f2,
                  decoration: inputDecoration(prefixName: 'Last name'),
                  maxLines: 1,
                  onFieldSubmitted: (value) => f3.requestFocus(),
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact['lastNames'] = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                ),
                
                sizedBox(height: 16.0),
                
                // Mobile number field
                TextFormField (
                  validator: (value) {
                    if (value.length != 10)
                      return 'Mobile Number must be of 10 digit';
                    else
                      return null;
                  },
                  initialValue: contact['mobile'] ?? '',
                  focusNode: f3,
                  decoration: inputDecoration(prefixName: 'Phone', hintText: '042212356'),
                  maxLines: 1,
                  onFieldSubmitted: (value) => f4.requestFocus(),
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact['mobile'] = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  // maxLength: 10,
                  keyboardType: TextInputType.phone,
                ),
                
                sizedBox(height: 16.0),
                
                // Email field
                TextFormField (
                  initialValue: contact['email'] ?? '',
                  validator: (value) {
                    if(value.length ==null) {
                      return 'Enter email';
                    } else 
                      return null;
                  },
                  focusNode: f4,
                  decoration: inputDecoration(prefixName:'Email', hintText: 'example@domain.com'),
                  maxLines: 1,
                  onFieldSubmitted: (value) => f5.requestFocus(),
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact['email'] = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.emailAddress,
                ),
                
                sizedBox(height: 16.0),
                
                // Address field
                TextFormField (
                  initialValue: '',
                  focusNode: f5,
                  decoration: inputDecoration(hintText: 'Address'),
                  maxLines: 1,
                  onFieldSubmitted: (value) => f6.requestFocus(),
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact.firstName = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                ),
                
                sizedBox(height: 16.0),
                
                // Contact notes field
                TextFormField (
                  initialValue:  (contact['notes'] != null && contact['notes'].isNotEmpty)
                    ? contact['notes'].first['note'] ?? ''
                    : '',
                  focusNode: f6,
                  decoration: inputDecoration(hintText:'Contact Notes'),
                  maxLines: 4,
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => contact['notes'].first['note'] = value.trim(),
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                ),
                
                // Special Note sections
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Notes will only be visible to team members',
                    style: TextStyle(fontSize: 14.0, color: Theme.of(context).primaryColor),
                  ),
                ),
                
                Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 2,
                  indent: 0,
                ),
                
                // checkbox section
                Container(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: <Widget>[
                      Checkbox(
                        value: contact['doNotContact'] ?? false,
                        onChanged: (value) => setState(() => {
                          value == null ? {contact['doNotContact'] = false} : '',
                          contact['doNotContact'] = !value,
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      InkWell(
                        onTap: () => setState(() {
                          if (contact['doNotContact'] == null) {
                            contact['doNotContact'] = false;
                          }
                          contact['doNotContact'] = !contact['doNotContact'];
                        }),
                        canRequestFocus: true,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 40,
                          width: double.infinity,
                          child: Padding(
                            /// checkbox width + spacing
                            padding: const EdgeInsets.only(left: (40 + 16.0)),
                            child: Text(
                              'Do not contact',
                              style:
                                Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactInfo {
  ContactInfo({this.contact, this.formType });
  final contact;
  final formType;
}