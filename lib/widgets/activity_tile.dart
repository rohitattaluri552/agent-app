import 'package:agent_app/widgets/add_or_edit_note.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:intl/intl.dart';

enum ActivityType { note, checkin, document }

final activityIcon = {
  ActivityType.checkin: OMIcons.personPinCircle,
  ActivityType.note: OMIcons.comment,
  ActivityType.document: OMIcons.description,
};

final activityIconColor = {
  ActivityType.checkin: Color(0xff0C4DC6),
  ActivityType.note: Color(0xff7C251e),
  ActivityType.document: Color(0xff025B45),
};

final activityBgColor = {
  ActivityType.checkin: Color(0xFFF5FAFF),
  ActivityType.note: Color(0xffFCF0EF),
  ActivityType.document: Color(0xff348254),
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
    final noteFormType = 'editNote';

    dynamic getActivityType(type) {
      if (type == 'note')
        return ActivityType.note;
      else if (type == 'checkin')
        return ActivityType.checkin;
      else if (type == 'document') return ActivityType.document;
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
        text: TextSpan(
          text:
              '${activityDescription[getActivityType(_activityObject['type'])]} ',
          children: [
            TextSpan(
              text: '${activity['firstNames']} ' ?? '',
              style: bold,
            ),
            TextSpan(
              text: '${activity['lastNames']} ' ?? '',
              style: bold,
            ),
            TextSpan(
              text: getActivityType(activity['type']) == ActivityType.checkin
                  ? 'to '
                  : 'for ',
            ),
            TextSpan(
              text: '${activity['address']}, ${activity['suburb']} ',
              style: bold,
            )
          ],
          style: textTheme.body1.copyWith(color: Colors.grey[900]),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
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
                    backgroundColor: activityBgColor[
                        getActivityType(_activityObject['type'])],
                    foregroundColor: Colors.grey,
                    radius: 22,
                    child: Icon(
                      activityIcon[getActivityType(_activityObject['type'])],
                      size: 18,
                      color: activityIconColor[
                          getActivityType(_activityObject['type'])],
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(activityCreatedAt(_activityObject),
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: 4.0),
                getActivityDescription(_activityObject),
                SizedBox(height: 8.0),
                getActivityType(_activityObject['type']) == ActivityType.note
                    ? GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          AddOrEditNote.routeName,
                          arguments: {
                            'formType': noteFormType,
                            'noteText' : _activityObject['note'] ?? '',
                          },
                        ),
                        child: _activityObject['note'] != null
                            ? Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Color(0xffF9F9FB),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(_activityObject['note'],
                                    style: textTheme.body1),
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
