import 'package:agent_app/widgets/listing_list_item.dart';
import 'package:agent_app/widgets/section_title.dart';
import 'package:agent_app/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class ListingView extends StatefulWidget {
  ListingView({Key key}) : super(key: key);

  @override
  _ListingViewState createState() => _ListingViewState();
}

class _ListingViewState extends State<ListingView> {

  final List _listingsList = [
    {
      "listingId": "0bae4b0d-3474-4ce3-bb8c-c21b2c9d5502",
      "address": {
        "country": "AU",
        "postcode": "2121",
        "state": "NSW",
        "suburb": "Frounds",
        "location": {
          "lat": -33.12345,
          "lng": 31.12345
        },
        "address": "16 Frouds Rd"
      },
      "thumbnailImageUrl": "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "documents": [],
      "isSold": false,
      "events": [
        {
          "inspectionEventId": "18f499f9-799d-4b9d-a241-e70663a78090",
          "startDateTime": "2020-07-22 09:40:00",
          "endDateTime": "2020-07-22 10:20:00",
          "startDateTimeUtc": "2020-07-21T23:40:00Z",
          "endDateTimeUtc": "2020-07-22T00:20:00Z"
        }
      ],
      "upcomingEvents": [
        {
          "inspectionEventId": "18f499f9-799d-4b9d-a241-e70663a78090",
          "startDateTime": "2020-07-22 09:40:00",
          "endDateTime": "2020-07-22 10:20:00",
          "startDateTimeUtc": "2020-07-21T23:40:00Z",
          "endDateTimeUtc": "2020-07-22T00:20:00Z"
        }
      ]
    },
    {
      "listingId": "931824b7-1a15-4525-9dc8-9e525e72ae0e",
      "address": {
        "country": "AU",
        "postcode": "2121",
        "state": "NSW",
        "suburb": "Shannonvale",
        "location": {
          "lat": -33.12345,
          "lng": 31.12345
        },
        "address": "19 Frouds Rd"
      },
      "thumbnailImageUrl": "https://ofi-documents-dev.s3-ap-southeast-2.amazonaws.com/4.jpg",
      "documents": [],
      "isSold": false,
      "events": [
        {
          "inspectionEventId": "a47775e6-4334-41ba-803d-afdd8923e55a",
          "startDateTime": "2020-07-28 09:40:00",
          "endDateTime": "2020-07-28 10:20:00",
          "startDateTimeUtc": "2020-07-27T23:40:00Z",
          "endDateTimeUtc": "2020-07-28T00:20:00Z"
        }
      ],
      "upcomingEvents": [
        {
          "inspectionEventId": "a47775e6-4334-41ba-803d-afdd8923e55a",
          "startDateTime": "2020-07-28 09:40:00",
          "endDateTime": "2020-07-28 10:20:00",
          "startDateTimeUtc": "2020-07-27T23:40:00Z",
          "endDateTimeUtc": "2020-07-28T00:20:00Z"
        }
      ]
    },
    {
      "listingId": "3b083c73-2dc1-4a10-93dd-5a1e4f129e0e",
      "address": {
        "country": "AU",
        "postcode": "2121",
        "state": "NSW",
        "suburb": "Shannonvale",
        "location": {
          "lat": -33.12345,
          "lng": 31.12345
        },
        "address": "18 Frouds Rd"
      },
      "thumbnailImageUrl": "https://ofi-documents-dev.s3-ap-southeast-2.amazonaws.com/3.jpg",
      "documents": [],
      "isSold": false,
      "events": [
        {
          "inspectionEventId": "776559ce-dd81-4fc3-ae33-79d264e61e23",
          "startDateTime": "2020-07-21 12:40:00",
          "endDateTime": "2020-07-21 13:20:00",
          "startDateTimeUtc": "2020-07-21T02:40:00Z",
          "endDateTimeUtc": "2020-07-21T03:20:00Z"
        },
        {
          "inspectionEventId": "a021879a-fba5-456f-b652-14a7bd9777ff",
          "startDateTime": "2020-07-28 09:40:00",
          "endDateTime": "2020-07-28 10:20:00",
          "startDateTimeUtc": "2020-07-27T23:40:00Z",
          "endDateTimeUtc": "2020-07-28T00:20:00Z"
        },
        {
          "inspectionEventId": "5aa02d9a-c544-4051-bd19-7fa1975aa948",
          "startDateTime": "2020-07-17 12:40:00",
          "endDateTime": "2020-07-17 13:20:00",
          "startDateTimeUtc": "2020-07-17T02:40:00Z",
          "endDateTimeUtc": "2020-07-17T03:20:00Z"
        },
        {
          "inspectionEventId": "da9a5ad1-fe1d-4843-a643-a625dd250f73",
          "startDateTime": "2020-07-15 12:40:00",
          "endDateTime": "2020-07-15 13:20:00",
          "startDateTimeUtc": "2020-07-15T02:40:00Z",
          "endDateTimeUtc": "2020-07-15T03:20:00Z"
        }
      ],
      "upcomingEvents": [
        {
          "inspectionEventId": "da9a5ad1-fe1d-4843-a643-a625dd250f73",
          "startDateTime": "2020-07-15 12:40:00",
          "endDateTime": "2020-07-15 13:20:00",
          "startDateTimeUtc": "2020-07-15T02:40:00Z",
          "endDateTimeUtc": "2020-07-15T03:20:00Z"
        },
        {
          "inspectionEventId": "5aa02d9a-c544-4051-bd19-7fa1975aa948",
          "startDateTime": "2020-07-17 12:40:00",
          "endDateTime": "2020-07-17 13:20:00",
          "startDateTimeUtc": "2020-07-17T02:40:00Z",
          "endDateTimeUtc": "2020-07-17T03:20:00Z"
        },
        {
          "inspectionEventId": "776559ce-dd81-4fc3-ae33-79d264e61e23",
          "startDateTime": "2020-07-21 12:40:00",
          "endDateTime": "2020-07-21 13:20:00",
          "startDateTimeUtc": "2020-07-21T02:40:00Z",
          "endDateTimeUtc": "2020-07-21T03:20:00Z"
        },
        {
          "inspectionEventId": "a021879a-fba5-456f-b652-14a7bd9777ff",
          "startDateTime": "2020-07-28 09:40:00",
          "endDateTime": "2020-07-28 10:20:00",
          "startDateTimeUtc": "2020-07-27T23:40:00Z",
          "endDateTimeUtc": "2020-07-28T00:20:00Z"
        }
      ]
    },
    {
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "address": {
        "country": "AU",
        "postcode": "2121",
        "state": "NSW",
        "suburb": "Shannonvale",
        "location": {
          "lat": -33.12345,
          "lng": 31.12345
        },
        "address": "17 Frouds Rd"
      },
      "thumbnailImageUrl": "https://ofi-documents-dev.s3-ap-southeast-2.amazonaws.com/2.jpg",
      "documents": [],
      "isSold": false,
      "events": [
        {
          "inspectionEventId": "826fa941-9e0e-44c5-bf5e-f11627a8b372",
          "startDateTime": "2020-07-17 09:40:00",
          "endDateTime": "2020-07-17 10:20:00",
          "startDateTimeUtc": "2020-07-16T23:40:00Z",
          "endDateTimeUtc": "2020-07-17T00:20:00Z"
        },
        {
          "inspectionEventId": "24b1e2dc-d4c6-4cdc-9106-195163081e90",
          "startDateTime": "2020-07-15 09:40:00",
          "endDateTime": "2020-07-15 10:20:00",
          "startDateTimeUtc": "2020-07-14T23:40:00Z",
          "endDateTimeUtc": "2020-07-15T00:20:00Z"
        }
      ],
      "upcomingEvents": [
        {
          "inspectionEventId": "24b1e2dc-d4c6-4cdc-9106-195163081e90",
          "startDateTime": "2020-07-15 09:40:00",
          "endDateTime": "2020-07-15 10:20:00",
          "startDateTimeUtc": "2020-07-14T23:40:00Z",
          "endDateTimeUtc": "2020-07-15T00:20:00Z"
        },
        {
          "inspectionEventId": "826fa941-9e0e-44c5-bf5e-f11627a8b372",
          "startDateTime": "2020-07-17 09:40:00",
          "endDateTime": "2020-07-17 10:20:00",
          "startDateTimeUtc": "2020-07-16T23:40:00Z",
          "endDateTimeUtc": "2020-07-17T00:20:00Z"
        }
      ]
    }
  ];
  
  @override
  Widget build(BuildContext context) {

    final listingsWithSectionHeader = [ 
      SectionTitle('My Listings'),
      _listingsList.map((listing) => ListingListItem(listing: listing)).toList()
    ]
      .where((w) => w!= null)
      .expand((f) => (f is List<Widget> ? f : <Widget>[f]))
      .toList();

    return Scaffold (
      appBar: TitleBar(title: 'Listings'),
      body: ListView(
        padding: EdgeInsets.only(top: 16.0),
        scrollDirection: Axis.vertical,
        children: listingsWithSectionHeader ?? Center(child: Container(child: Text('No activities yet!'),),),
      ),
    );
  }
}
