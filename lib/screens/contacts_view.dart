import 'package:agent_app/widgets/contacts_list_item.dart';
import 'package:agent_app/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  ContactsView({this.isScaffoldReq,Key key}) : super(key: key);
  final bool isScaffoldReq;

  @override
  _ContactsViewState createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final List<dynamic> contactsList =[
    {
      "contactId": "b3cde832-4a0b-46c7-87ce-4aa214c57640",
      "firstNames": "Steve",
      "lastNames": "Mcmahon",
      "email": null,
      "mobile": "0400041414",
      "homePhone": null,
      "doNotContact": false,
      "notes": [
        {
          "noteId": "711fbbaa-ae44-438f-bf8e-6ad131942e8d",
          "note": "This is a contact note, right?",
          "isPrivate": true
        }
      ]
    },
    {
      "contactId": "b6185f2d-25bf-45ec-8dc3-5f58b53795c5",
      "firstNames": "Zilvia",
      "lastNames": "Burberow",
      "email": "zburberow@fakeem.com",
      "mobile": null,
      "homePhone": null,
      "doNotContact": false,
      "notes": [
        {
          "noteId": "bea491c6-b0e0-431d-8651-e96c9601dbc9",
          "note": "this person is interested in the house",
          "isPrivate": true
        }
      ]
    },
    {
      "contactId": "367a04be-95f1-4d98-8b53-6ff65392d4ec",
      "firstNames": "Loop",
      "lastNames": "Hertz",
      "email": null,
      "mobile": "0433963852",
      "homePhone": null,
      "doNotContact": false,
      "notes": []
    },
    {
      "contactId": "462cc725-87bf-424f-a681-2a0fc93bb088",
      "firstNames": "Amanda",
      "lastNames": "Green",
      "email": null,
      "mobile": "0433338888",
      "homePhone": null,
      "doNotContact": false,
      "notes": []
    },
    {
      "contactId": "f193296d-91b9-4ff2-bee5-3a1b9d127e59",
      "firstNames": "Bob Bobby",
      "lastNames": "Jennifer",
      "email": "bobbobby@email.com",
      "mobile": "0444444449",
      "homePhone": null,
      "doNotContact": false,
      "notes": [
        {
          "noteId": "9f6929f1-395f-42e0-bca4-37869d4d9578",
          "note": "This is a contact note. can I talk into this and it will write my notes",
          "isPrivate": true
        },
        {
          "noteId": "7b6caf1a-22ac-4865-bfc1-f4e0ee7c796d",
          "note": "Here is a new note",
          "isPrivate": true
        }
      ]
    },
    {
      "contactId": "924d1143-2453-4cc1-9828-6debe85b016a",
      "firstNames": "bla",
      "lastNames": "bla",
      "email": "a@a.com",
      "mobile": "0404040704",
      "homePhone": null,
      "doNotContact": false,
      "notes": []
    },
    {
      "contactId": "8e0d4d1e-ce38-433b-afa9-ff3d61db236e",
      "firstNames": "Madison",
      "lastNames": "Mathews",
      "email": "MadisonMathews@fakeemail.com",
      "mobile": "0421234568",
      "homePhone": null,
      "doNotContact": false,
      "notes": []
    },
    {
      "contactId": "47b851c8-c6e8-440f-9b96-fb044b1dcac0",
      "firstNames": "Ashley",
      "lastNames": "Planc",
      "email": "AshleyPlanc@fakemail.com",
      "mobile": "0421234567",
      "homePhone": null,
      "doNotContact": false,
      "notes": [
        {
          "noteId": "a1607b1b-7ab9-4d10-8f2c-fe07b7d1a309",
          "note": "Lives in West Australia",
          "isPrivate": true
        }
      ]
    },
    {
      "contactId": "90f151b7-544e-476b-a18c-9978b26c53ce",
      "firstNames": "Aaron",
      "lastNames": "Brett",
      "email": "AaronBrett@fakeemail.com",
      "mobile": "0427654321",
      "homePhone": null,
      "doNotContact": false,
      "notes": [
        {
          "noteId": "530d59a2-885b-4748-bad2-5ddcd6240f77",
          "note": "hi Aaron bett",
          "isPrivate": true
        }
      ]
    },
    {
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
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return widget.isScaffoldReq == null
            ?  Scaffold(
                appBar: TitleBar(title: 'Contacts'),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          itemCount: contactsList.length ?? 0,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return  ContactListItem(contactsList[index]);
                          }
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container (
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                      itemCount: contactsList.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return  ContactListItem(contactsList[index]);
                      }
                  ),
              );
  }
}
