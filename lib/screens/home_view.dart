import 'package:agent_app/widgets/activities.dart';
import 'package:agent_app/widgets/event_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color textColor = Color(0xff3a525f);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            welcomeNote(textColor),
            upcomingEvents(textColor),
            Container (
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: 8.0,top: 16.0, left: 16.0),
              child: Text('updates'.toUpperCase(), style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400, color: textColor)),
            ),
            Expanded(child: Activities(),),
          ],
        ),
      ),
    );
  }

  Widget welcomeNote(textColor) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Text('Hi, Rohit!', style: TextStyle(fontSize: 24.0,color: textColor,fontWeight: FontWeight.w400,),),
    );
  }

  Widget upcomingEvents(textColor) {
    final double eventTileHeight = 240;

    final eventDetails = [
      {'title': 'EiffelTower', 'imageUrl': 'https://bit.ly/2ZnjgOa', 'suburb': 'Paris', 'eventTime': 'WED 22 JUL - 9:40 AM'},
      {'title': 'EiffelTower', 'imageUrl': 'https://ofi-documents-dev.s3-ap-southeast-2.amazonaws.com/4.jpg', 'suburb': 'Paris', 'eventTime': 'FRI 16 AUG - 15:30 AM'},
      {'title': 'EiffelTower', 'imageUrl': 'https://bit.ly/2ZoS1Tv', 'suburb': 'Paris', 'eventTime': 'WED 20 JUNE - 8:00 AM'},
    ];

    final events = eventDetails.map((event) => EventTile(event: event)).toList();

    return Column(
      children:[
        Container (
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 16.0, left: 16.0),
          child: Text('upcoming'.toUpperCase(), style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400, color: textColor)),
        ),
        Container(
          height: eventTileHeight,
          margin: EdgeInsets.only(right: 8.0),
          child: PageView (
            controller: PageController(
              initialPage: 1,
              viewportFraction: .95,
            ),
            children: events,
          ),
        ),
      ]
    );
  }
}
