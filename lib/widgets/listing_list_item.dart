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
    final theme = Theme.of(context);

    bool isNotEmpty(String s) => s?.trim()?.isNotEmpty ?? false;

    print('${listing['listingId']}');
    final textStyle = TextStyle(color: Theme.of(context).primaryColorDark);
    return GestureDetector (
      onTap: () {  },
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
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WED 15 JUL - 8:40 AM', style: textStyle,),
                      Container(
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
                      ),
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