import 'package:agent_app/screens/contacts_list_view.dart';
import 'package:agent_app/widgets/activities.dart';
import 'package:agent_app/widgets/listing_item_photo.dart';
import 'package:agent_app/widgets/listing_list_item.dart';
import 'package:agent_app/widgets/tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class ListingItemView extends StatefulWidget {
  
  ListingItemView({Key key}) : super(key: key);
  static String routeName = 'listingItemView'; 
  
  @override
  _ListingItemViewState createState() => _ListingItemViewState();
}

class _ListingItemViewState extends State<ListingItemView> with TickerProviderStateMixin  {

  List<String> tabs = [ "Event", "Contacts", "Updates"];

  final List tabBarViews = [
    Container(child: Text('text')),
    ContactsListView(isScaffoldReq: false),
    Container(
      color: Colors.grey[100],
      child: Activities(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final ListingListItem args = ModalRoute.of(context).settings.arguments;
    final listing = args.listing;
    return Scaffold (
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          child: Icon(OMIcons.personPinCircle, size: 32.0,),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () => {
            print('button clicked'),
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop()
          ),
          actions: <Widget>[],
        ),
        body: Column (
          children: <Widget>[
            ListingItemImage(listing: listing),
            Expanded(
              flex: 2,
              child: TabsWidget(tabs: tabs, tabBarViews: tabBarViews)
            )
          ],
        ),
    );
  }
}

