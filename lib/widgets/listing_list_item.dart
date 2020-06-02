import 'package:agent_app/screens/listing_item_view.dart';
import 'package:agent_app/widgets/listing_address.dart';
import 'package:flutter/material.dart';

class ListingListItem extends StatelessWidget {
  final double cardHeight = 120.0;
  ListingListItem({this.listing});
  final listing;
  
  @override
  Widget build(BuildContext context) {
    if (listing == null) {
      return Container();
    }

    bool isNotEmpty(String s) => s?.trim()?.isNotEmpty ?? false;

    final textStyle = TextStyle(color: Theme.of(context).primaryColorDark);
    return GestureDetector (
      onTap: () { 
          Navigator.pushNamed(
            context,
            ListingItemView.routeName,
            arguments: ListingListItem(listing: listing,),
          );
      },
      child: Container(
        height: cardHeight,
        margin: EdgeInsets.only(top: 0, left: 16.0,right: 16.0, bottom: 8.0),
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.zero,
          clipBehavior:  Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: Hero(
                  tag: listing['listingId'],
                  child: isNotEmpty(listing['thumbnailImageUrl'])
                    ? FadeInImage.assetNetwork(
                        image: listing['thumbnailImageUrl'],
                        placeholder: 'assets/images/placeholder.png',
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/placeholder.png',
                        fit: BoxFit.cover,
                      ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WED 15 JUL - 8:40 AM', style: textStyle,),
                      ListingAddress(listing: listing),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}

