import 'package:flutter/material.dart';

class ListingAddress extends StatelessWidget {
  ListingAddress({
    Key key,
    @required this.listing,
  }) : super(key: key);

  final listing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 8.0),
          Text(listing['address']['address'], 
            style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColorDark,),
            textScaleFactor: .8,
          ),
          SizedBox(height: .0),
          Text(
            listing['address']['suburb'], 
            style: Theme.of(context).textTheme.subhead.copyWith(color: Theme.of(context).primaryColorDark),
            textScaleFactor: .8,
          ),
          
        ],
      ),
    );
  }
}