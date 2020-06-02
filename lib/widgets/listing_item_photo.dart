import 'package:flutter/material.dart';


class ListingItemImage extends StatelessWidget {
  ListingItemImage({
    Key key,
    @required this.listing,
  }) : super(key: key);

  final listing;

  @override
  Widget build(BuildContext context) {
    return AspectRatio (
      aspectRatio: 16 / 11,
      child: Hero (
        tag: listing['listingId'],
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container (
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ 
                    Colors.transparent, 
                    Colors.black54
                  ],
                  stops: [0.5, 1],
                ),
              ),
              child: FadeInImage.assetNetwork(
                image: listing['thumbnailImageUrl'],
                placeholder: 'assets/images/placeholder.png',
                fit: BoxFit.cover,
              ),
            ),
            
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      listing['address']['address'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0
                    ),
                    Text(
                      listing['address']['suburb'],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,

                      ),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}