import 'package:flutter/material.dart';

class EventTile extends StatefulWidget {
  EventTile({Key key, this.event}) : super(key: key);
  final event;
  @override
  _EventTileState createState() => _EventTileState();
}

class _EventTileState extends State<EventTile> {
  
  @override
  Widget build(BuildContext context) {
    
    final eventAddress = Container(
      margin: EdgeInsets.all(16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.event['title'], 
            style: TextStyle(color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            widget.event['suburb'],
            style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w400),
          ),
        ]
      ),
    );

    final eventTime = Container (
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container (
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
        child: Text(widget.event['eventTime'], 
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

    Widget eventImage () {
      return Container(
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ 
              Colors.transparent, 
              Colors.black54
            ],
            stops: [0.5, 1],
          ),
        ),
        child: Card (
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            widget.event['imageUrl'],
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {},
      child: AspectRatio (
        aspectRatio: 16 / 9,
        child: Container(
          padding: EdgeInsets.only(right: 8.0),
          child: Stack(
            children:[
              eventImage(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromRGBO(0, 0, 0, 0.80),
                    ],
                    stops: [.5,1.0],
                  ),
                ),
              ),
              Positioned(child: eventAddress,bottom: 0,left: 0,),
              Positioned(child: eventTime, top: 4.0)
            ],
          ),
        ),
      ),
    );
  }
}