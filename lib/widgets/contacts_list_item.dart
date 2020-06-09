import 'package:agent_app/screens/contact_view.dart';
import 'package:agent_app/widgets/circular_avatar.dart';
import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  ContactListItem({this.contact});
  final contact;
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    String getContactInfo() {
      dynamic contactInfo = [contact['email'], contact['mobile']]
            .where((c) => c?.isNotEmpty ?? false)
            .join(' ● ');
      return contactInfo;
    }
    
    String name() {
      return [contact['firstNames'] ?? '', contact['lastNames'] ?? ''].where((n) => n != null).join(' ');
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed (
          context,
          ContactView.routeName,
          arguments: ContactListItem(contact: contact),
        );
      },
      child: Container (
        margin: EdgeInsets.only(bottom: 16.0),
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircularAvatarWidget(contact),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    Text(
                      name(),
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.body1.copyWith(
                        height: 1,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(
                      getContactInfo(),
                      overflow: TextOverflow.clip,
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}