import 'package:agent_app/widgets/circular_avatar.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  SettingsView({Key key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  dynamic contact = {
    "contactId": "c3ec33b9-6940-46d4-be17-70b41423bea4",
    "firstNames": "Mercedes",
    "lastNames": "Thompson",
    "email": "lillian@ljx.com.au",
    "mobile": null,
    "homePhone": null,
    "doNotContact": false,
    "notes": [
      {
        "noteId": "78443e46-4b44-4e0e-8057-3617cbca1f08",
        "note": "Just checking. behavior ",
        "isPrivate": true
      },
      {
        "noteId": "cad2acd9-5aa4-4d33-b609-38fb15ecc3e5",
        "note": "not sure contact notes are visible to vendor",
        "isPrivate": true
      },
    ]
  };

  String get name => [contact['firstNames'], contact['lastName']].where((w) => w != null).join(' ');

  @override
  Widget build(BuildContext context) {
    return Container (
      color: Theme.of(context).canvasColor,
      padding: EdgeInsets.only(top: 64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Signed in as:', style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: 16.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey,
            radius: 24.0,
            child: CircularAvatarWidget(contact),
          ),
          SizedBox(
            height: 32.0,
          ),
          Text(name ?? '',style: Theme.of(context).textTheme.body2),
          Text(contact['email'] ?? '', style: Theme.of(context).textTheme.body1),
          Text(contact['mobile'] ?? ''),
          SizedBox(height: 64.0),
          Divider(
            thickness: 2.0,
            height: 10.0,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          MaterialButton(onPressed: null,
            child: Text('SIGN OUT', 
              style: Theme.of(context).textTheme.button.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            thickness: 2.0,
            height: 10.0,
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ],
      )
    );
  }
}
