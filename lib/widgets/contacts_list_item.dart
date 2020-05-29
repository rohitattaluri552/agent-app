import 'package:flutter/material.dart';

class ContactListItem extends StatefulWidget {
  ContactListItem(this.contact,{Key key}) : super(key: key);
  final contact;
  @override
  _ContactListItemState createState() => _ContactListItemState();
}

class _ContactListItemState extends State<ContactListItem> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final contact = widget.contact;
    
    String name() {
      return [contact['firstNames'] ?? '', contact['lastNames'] ?? ''].where((n) => n != null).join(' ');
    }
    
    String initials() {
      return name().replaceAllMapped(RegExp(r'\b(\S)\S+'), (m) => m[1].toUpperCase())
                  .replaceAll(' ', '');
    }


    Widget contactAvatar(contact) {

      return CircleAvatar (
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey[900],
        radius: 24.0,
        child: Container(
              width: 48,
              height: 48,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                  color: Colors.white ?? Colors.grey[200],
                  shape: CircleBorder(side: BorderSide(color: Colors.grey[300]))),
              child: Text(
                initials(),
                textScaleFactor: 1,
                // the name could contain the count of contacts.
                // Eg: +34, fontSize 12 for triple digit count to fit in one line
                style: TextStyle(
                    fontSize: initials().startsWith('+') && initials().length > 3 ? 12 : 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontFamily: Theme.of(context).textTheme.body1.fontFamily),
              ),
            ),
      );
    }

    String getContactInfo() {
      dynamic contactInfo = [contact['email'], contact['mobile']]
            .where((c) => c?.isNotEmpty ?? false)
            .join(' ● ');
      return contactInfo;
    }
  
    return GestureDetector(
      onTap: () {},
      child: Container (
        margin: EdgeInsets.only(bottom: 16.0),
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            contactAvatar(contact),
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