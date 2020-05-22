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
      return ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.black87],
          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
        },
        blendMode: BlendMode.dstIn,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            widget.event['imageUrl'],
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          elevation: 5,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          
        });
      },
      child: Stack(
        children:[
          Container(
            padding: EdgeInsets.only(right: 8.0),
            child: Stack(
              children: <Widget>[
                eventImage(),
                Positioned(child: eventAddress,bottom: 0,left: 0,),
                Positioned(child: eventTime, top: 4.0)
              ],
            ),
          ),
        ],
      ),
    );
  }
}