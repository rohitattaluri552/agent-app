import 'package:agent_app/widgets/activities.dart';
import 'package:agent_app/widgets/app_drawer.dart';
import 'package:agent_app/widgets/event_tile.dart';
import 'package:flutter/gestures.dart';
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
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      body: NestedScrollView(
        dragStartBehavior: DragStartBehavior.down,
        headerSliverBuilder: (BuildContext bc, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: Container(),
              backgroundColor: Colors.transparent,
              expandedHeight: 389.0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          welcomeNote(textColor),
                          SizedBox(height: 16.0),
                          upcomingEvents(textColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(bottom: 16.0, top: 16.0, left: 16.0),
              child: Text(
                'Activity feed',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ),
            Expanded(
              child: Activities(),
            ),
          ],
        ),
      ),
    );
  }

  Widget welcomeNote(textColor) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 45.0,
            height: 45.0,

            ///Another way to build a rounded image

            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage('https://www.woolha.com/media/2019/06/buneary.jpg'),
            //   ),
            // ),
            child: ClipOval(
              child: Image.asset('assets/images/placeholder.png',
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Hi, Rohit',
            style: TextStyle(
              fontSize: 36.0,
              color: Color(0xff080c11),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget upcomingEvents(textColor) {
    final double eventTileHeight = 240;

    final eventDetails = [
      {
        'title': 'EiffelTower',
        'imageUrl': 'https://bit.ly/2ZnjgOa',
        'suburb': 'Paris',
        'eventTime': 'WED 22 JUL - 9:40 AM'
      },
      {
        'title': 'EiffelTower',
        'imageUrl':
            'https://ofi-documents-dev.s3-ap-southeast-2.amazonaws.com/4.jpg',
        'suburb': 'Paris',
        'eventTime': 'FRI 16 AUG - 15:30 AM'
      },
      {
        'title': 'EiffelTower',
        'imageUrl': 'https://bit.ly/3bM2M4Q',
        'suburb': 'Paris',
        'eventTime': 'WED 20 JUNE - 8:00 AM'
      },
    ];

    final events =
        eventDetails.map((event) => EventTile(event: event)).toList();

    return Column(children: [
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(bottom: 16.0, left: 16.0),
        child: Row(
          children: <Widget>[
            Text(
              'Upcoming Opens',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(width: 4.0),
            eventDetails.length != 0
                ? Text(
                    '(${eventDetails.length})',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      Container(
        height: eventTileHeight,
        margin: EdgeInsets.only(right: 8.0),
        child: eventDetails.length != 0
            ? PageView(
                controller: PageController(
                  initialPage: 1,
                  viewportFraction: .95,
                ),
                children: events ?? null,
              )
            : EventTile(
                event: null,
              ),
      ),
    ]);
  }
}
