import 'package:agent_app/screens/create_or_edit_contact.dart';
import 'package:agent_app/screens/listing_view.dart';
import 'package:agent_app/widgets/activities.dart';
import 'package:agent_app/widgets/add_or_edit_note.dart';
import 'package:agent_app/widgets/app_bar_widget.dart';
import 'package:agent_app/widgets/circular_avatar.dart';
import 'package:agent_app/widgets/contacts_list_item.dart';
import 'package:agent_app/widgets/tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class ContactView extends StatefulWidget {
  ContactView({Key key}) : super(key: key);

  static const String routeName = 'contactView';
  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  List<String> tabs = ['Updates', 'Recent Opens', 'Notes'];

  int currentTabIndex = 0;

  List tabBarViews = [
    Container(
      color: Colors.grey[100],
      child: Activities(activityType: 'checkin'),
    ),
    ListingView(view: 'contacts'),
    Container(
      color: Colors.grey[100],
      child: Activities(activityType: 'note'),
    )
  ];

  // Get current tab Index from tab.dart on every tab changes
  getTabIndex(index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  //Get contact profile details
  Widget contactProfile(contact) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 12),
              CircularAvatarWidget(contact),
              SizedBox(height: 16.0),
              getContactName(contact),
              contact['email'] != null
                  ? getContactInfo(contact, 'email')
                  : Container(),
              contact['mobile'] != null
                  ? getContactInfo(contact, 'mobile')
                  : Container(),
            ],
          ),
        ));
  }

  // To get contactName
  Widget getContactName(contact) {
    dynamic contactName =
        [contact['firstNames'], contact['lastNames']].join(' ');
    return Text(contactName,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor));
  }

  // Get contact information
  Widget getContactInfo(contact, infoType) {
    Widget icon =
        infoType == 'mobile' ? Icon(OMIcons.phone) : Icon(OMIcons.mail);
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          SizedBox(width: 8.0),
          Text(
            contact[infoType],
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ContactListItem args = ModalRoute.of(context).settings.arguments;
    final contact = args.contact;
    final formType = 'editContact';
    final _appbar = AppBarwidget(
      title: '',
      actions: [
        FlatButton(
          child: Text(
            'EDIT',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            CreateOrEditContact.routeName,
            arguments: {
              'contact': contact,
              'formType': formType,
            },
          ),
        ),
      ],
    );
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: _appbar,
        floatingActionButton: currentTabIndex != 2
            ? null
            : Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: FloatingActionButton.extended(
                    icon: Icon(OMIcons.noteAdd),
                    label: Text('Add new note'),
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () => {
                          Navigator.pushNamed(context, AddOrEditNote.routeName,
                              arguments: AddOrEditNote(formType: 'createNote')),
                        }),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext bc, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: Container(),
                backgroundColor: Colors.transparent,
                expandedHeight: 225.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: <Widget>[
                      contactProfile(contact),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ];
          },
          // body: Container(),
          body: Column(
            children: <Widget>[
              Expanded(
                child: TabsWidget(
                    view: '',
                    tabs: tabs,
                    tabBarViews: tabBarViews,
                    needPadding: false,
                    getTabIndex: getTabIndex,
                  ),
              )
            ],
          ),
        ),
      );
  }
}
