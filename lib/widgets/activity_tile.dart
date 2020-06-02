import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:intl/intl.dart';

enum ActivityType { note, checkin, document }

final activityIcon = {
  ActivityType.checkin: OMIcons.personPinCircle,
  ActivityType.note: OMIcons.create,
  ActivityType.document: OMIcons.description,
};

final activityIconColor = {
  ActivityType.checkin: Colors.blue,
  ActivityType.note: Colors.yellow,
  ActivityType.document: Colors.green,
};

final activityDescription = {
  ActivityType.checkin: 'Checked in',
  ActivityType.note: 'Note added to',
  ActivityType.document: 'Document sent to',
};

class ActivityTile extends StatefulWidget {
  ActivityTile({Key key, this.activity}) : super(key: key);
  final activity;
  @override
  _ActivityTileState createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {
  @override
  Widget build(BuildContext context) {
    final _activityObject = widget.activity;
    final textTheme = Theme.of(context).textTheme;
    final bold = textTheme.body1.copyWith(fontWeight: FontWeight.w500);
    
    dynamic getActivityType(type) {
      if(type == 'note') return ActivityType.note;
      else if(type == 'checkin') return ActivityType.checkin;
      else if(type == 'document') return ActivityType.document;
    }

    activityCreatedAt(activity) {
      var now = new DateTime.now();
      final activityAt = DateFormat('HH:MM a').format(now);
      var lastName = activity['agentLastNames'].substring(0, 1);
      final agentName = '${activity['agentFirstNames']}  $lastName'; 
      return agentName + ' - ' + activityAt;
    }

    Widget getActivityDescription(activity) {
    
      return RichText(
        text: TextSpan (
          text: '${activityDescription[getActivityType(_activityObject['type'])]} ',
          children: [
            TextSpan(
              text: '${activity['firstNames']} ' ?? '',style: bold,
            ),
            TextSpan(
              text: '${activity['lastNames']} ' ?? '',style: bold,
            ),
            TextSpan(
              text:  getActivityType(activity['type']) == ActivityType.checkin ? 'to ' : 'for ',
            ),
            TextSpan(
              text: '${activity['address']}, ${activity['suburb']} ', style: bold,
            )
          ],
          style: textTheme.body1.copyWith(color: Colors.grey[900]),
        ),
      );
    }
    
    return Container (
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row (
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 12, right: 16.0),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    radius: 18,
                    child: Icon(
                      activityIcon[getActivityType(_activityObject['type'])],
                      size: 18 * 1.5,
                      color: activityIconColor[getActivityType(_activityObject['type'])],
                    ),
                  ),
                  backgroundColor: Theme.of(context).primaryColorLight,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[  
                Text(activityCreatedAt(_activityObject),
                  style: TextStyle(color: Colors.grey[400], fontSize: 16.0, fontWeight: FontWeight.w400)
                ),
                getActivityDescription(_activityObject),
                getActivityType(_activityObject['type']) == ActivityType.note
                  ? GestureDetector(
                    onTap: () => {
                      print('Open note edit view'),
                    },
                    child: _activityObject['note'] != null
                    ? Container (
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.0,color: Colors.transparent, ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                        child: Text(_activityObject['note'], style: textTheme.body1),
                      )
                    : Container(),
                  )
                  : Container(),
              ].where((w) => w != null).toList(),
            ),
          ),
        ],
      ),
    );
  }
}