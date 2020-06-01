import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  const CircularAvatarWidget(this.contact,{Key key}) : super(key: key);
  final contact;
  
  String get name => [contact['firstNames'], contact['lastName']].where((w) => w != null).join(' ');

  String get initials => name
    .replaceAllMapped(RegExp(r'\b(\S)\S+'), (m) => m[1].toUpperCase())
    .replaceAll(' ', '');
    
  @override
  Widget build(BuildContext context) {


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
          initials,
          textScaleFactor: 1,
          // the name could contain the count of contacts.
          // Eg: +34, fontSize 12 for triple digit count to fit in one line
          style: TextStyle(
              fontSize: initials.startsWith('+') && initials.length > 3 ? 12 : 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              fontFamily: Theme.of(context).textTheme.body1.fontFamily),
        ),
      ),
    );
  }
}