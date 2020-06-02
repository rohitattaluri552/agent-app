import 'package:agent_app/screens/contacts_view.dart';
import 'package:agent_app/widgets/activities.dart';
import 'package:agent_app/widgets/listing_item_photo.dart';
import 'package:agent_app/widgets/listing_list_item.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
class ListingItemView extends StatefulWidget {
  
  ListingItemView({Key key}) : super(key: key);
  static String routeName = 'listingItemView'; 
  
  

  @override
  _ListingItemViewState createState() => _ListingItemViewState();
}

class _ListingItemViewState extends State<ListingItemView> with TickerProviderStateMixin  {
  TabController _tabController;

  @override
  void initState() { 
    _tabController = TabController(vsync: this, length: 3, initialIndex: 1);
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    final ListingListItem args = ModalRoute.of(context).settings.arguments;
    final listing = args.listing;
    print(args);
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
          actions: <Widget>[

          ],
        ),
        body: Column (
          children: <Widget>[
            ListingItemImage(listing: listing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:16.0,left: 16.0,right: 16.0),
                    color: Theme.of(context).canvasColor,
                    child: TabBar (
                      controller: _tabController,
                      indicatorColor: Theme.of(context).colorScheme.secondary,
                      labelColor: Theme.of(context).colorScheme.secondary,
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(
                          child: Text( 'Events', style: TextStyle(fontSize: 18.0),),
                        ),
                        Tab(
                          child: Text( 'Contacts', style: TextStyle(fontSize: 18.0),),
                        ),
                        Tab(
                          child:Text( 'Updates', style: TextStyle(fontSize: 18.0),),
                        ),
                      ],
                    ),
                  ),
                  Expanded (
                    flex: 1,
                    child: TabBarView (
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        Container(child: Text('text')),
                        ContactsView(isScaffoldReq: false),
                        Container(
                          margin: EdgeInsets.only(),
                          color: Colors.grey[100],
                          child: Activities(),
                        )
                      ]
                    ),
                  ),
                ],
              )
            )
          ],
        ),
    );
  }
}

