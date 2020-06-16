import 'package:agent_app/utils/utility.dart';
import 'package:flutter/material.dart';

class UpcomingEventTile extends StatelessWidget {
  const UpcomingEventTile({this.event,Key key}) : super(key: key);
  final event;
  final double cardHeight= 54.0;

  @override
  Widget build(BuildContext context) {
    print(event);
    BoxDecoration boxDecoration() {
      return BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 2.0,
          color: Colors.grey[100],
        ),
        borderRadius: BorderRadius.circular(4.0),
      );
    }

    return Container(
      height: cardHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 12.0),
            alignment: Alignment.center,
            decoration: boxDecoration(),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('15', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize:18.0)),
                Text('Jul'.toUpperCase()),
              ],
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Open Home', style: Theme.of(context).textTheme.body1
                        .copyWith(height: 1, color: Colors.grey[900])),
                  Text(
                    '09:30 AM - 12:30 PM',
                    style: Theme.of(context).textTheme.caption.copyWith(height: 1.2),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}