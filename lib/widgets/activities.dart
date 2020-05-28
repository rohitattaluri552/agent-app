import 'package:agent_app/widgets/activity_tile.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  Activities({Key key}) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  Color textColor = Color(0xff3a525f);


  
  @override
  Widget build(BuildContext context) {

    final _activities = [
    {
      "type": "checkin",
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "contactId": "b6185f2d-25bf-45ec-8dc3-5f58b53795c5",
      "address": "17 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "Zilvia",
      "lastNames": "Burberow",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "7e37279a-e965-4915-aced-a72d437041a5",
      "note": null,
      "createdAt": "2020-05-04T13:29:29Z"
    },
    {
      "type": "checkin",
      "listingId": "0bae4b0d-3474-4ce3-bb8c-c21b2c9d5502",
      "contactId": "c3ec33b9-6940-46d4-be17-70b41423bea4",
      "address": "16 Frouds Rd",
      "suburb": "Frounds",
      "firstNames": "Mercedes",
      "lastNames": "Thompson",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "212e669c-8310-49e4-988f-407bb3bf7d6e",
      "note": null,
      "createdAt": "2020-05-11T03:08:07Z"
    },
    {
      "type": "note",
      "listingId": "0bae4b0d-3474-4ce3-bb8c-c21b2c9d5502",
      "contactId": "c3ec33b9-6940-46d4-be17-70b41423bea4",
      "address": "16 Frouds Rd",
      "suburb": "Frounds",
      "firstNames": "Mercedes",
      "lastNames": "Thompson",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "d12f5704-dacb-4527-b2bc-9da8ef6f8822",
      "note": "like 2",
      "createdAt": "2020-05-11T03:08:07Z"
    },
    {
      "type": "checkin",
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "contactId": "924d1143-2453-4cc1-9828-6debe85b016a",
      "address": "17 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "bla",
      "lastNames": "bla",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "0fa0c911-3660-4554-8342-5aa858f7d919",
      "note": null,
      "createdAt": "2020-05-19T06:31:38Z"
    },
    {
      "type": "note",
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "contactId": "b6185f2d-25bf-45ec-8dc3-5f58b53795c5",
      "address": "17 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "Zilvia",
      "lastNames": "Burberow",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "ae19d5af-6ad3-418f-b630-0a3d0c05b1c7",
      "note": "dj dj day",
      "createdAt": "2020-05-04T13:29:29Z"
    },
    {
      "type": "note",
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "contactId": "b3cde832-4a0b-46c7-87ce-4aa214c57640",
      "address": "17 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "Steve",
      "lastNames": "Mcmahon",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "fc199df3-0b83-4659-aaf5-62722f2ce35b",
      "note": "I like this propery a lot! ",
      "createdAt": "2020-05-06T11:43:05Z"
    },
    {
      "type": "checkin",
      "listingId": "0bae4b0d-3474-4ce3-bb8c-c21b2c9d5502",
      "contactId": "c3ec33b9-6940-46d4-be17-70b41423bea4",
      "address": "16 Frouds Rd",
      "suburb": "Frounds",
      "firstNames": "Mercedes",
      "lastNames": "Thompson",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "434a10b1-b8f4-471c-8f46-504e90ac0dcb",
      "note": null,
      "createdAt": "2020-05-11T03:07:44Z"
    },
    {
      "type": "checkin",
      "listingId": "931824b7-1a15-4525-9dc8-9e525e72ae0e",
      "contactId": "b6185f2d-25bf-45ec-8dc3-5f58b53795c5",
      "address": "19 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "Zilvia",
      "lastNames": "Burberow",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "6df73fac-bf78-475e-be52-5656c3e67113",
      "note": null,
      "createdAt": "2020-05-21T03:28:07Z"
    },
    {
      "type": "checkin",
      "listingId": "c5ede796-bee0-4a3b-a3e6-2b682b38c908",
      "contactId": "b3cde832-4a0b-46c7-87ce-4aa214c57640",
      "address": "17 Frouds Rd",
      "suburb": "Shannonvale",
      "firstNames": "Steve",
      "lastNames": "Mcmahon",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "b2846bd0-e238-46c9-a544-49afa404c91b",
      "note": null,
      "createdAt": "2020-05-06T11:43:05Z"
    },
    {
      "type": "note",
      "listingId": "0bae4b0d-3474-4ce3-bb8c-c21b2c9d5502",
      "contactId": "c3ec33b9-6940-46d4-be17-70b41423bea4",
      "address": "16 Frouds Rd",
      "suburb": "Frounds",
      "firstNames": "Mercedes",
      "lastNames": "Thompson",
      "agentFirstNames": "Ajeya",
      "agentLastNames": "Vempati",
      "noteId": "e020a7d0-8e27-45fc-b919-90e5bb1c38d2",
      "note": "like",
      "createdAt": "2020-05-11T03:07:44Z"
    },
  ];

  final activityItems = _activities.map((activity) => ActivityTile(activity: activity)).toList();

    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 16.0,right: 16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container (
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 24.0,),
            child: Text('updates'.toUpperCase(), style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400, color: textColor)),
          ),
          Expanded(
            child: ListView(
              children: activityItems ?? Center(child: Container(child: Text('No activities yet!'),),),
            ),
          )
        ],
      ),
    );
  }
}