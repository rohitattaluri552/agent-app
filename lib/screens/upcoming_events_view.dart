import 'package:agent_app/widgets/upcoming_event_tile.dart';
import 'package:flutter/material.dart';

class UpcomingEventsView extends StatelessWidget {
  UpcomingEventsView({this.upcomingEvents, Key key}) : super(key: key);
  final upcomingEvents;
  @override
  Widget build(BuildContext context) {
    final upcomingEventsList =
        upcomingEvents.map((event) => UpcomingEventTile(event: event)).toList();

    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      children: List<Widget>.from(upcomingEventsList)
          .where((w) => w != null)
          .map((_eventTile) => Container(padding: EdgeInsets.only(bottom: 16.0),child: _eventTile,))
          .toList(),
    );
  }
}
