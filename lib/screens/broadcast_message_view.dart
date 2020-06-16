import 'package:agent_app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class BroadcastMessageView extends StatefulWidget {
  BroadcastMessageView({Key key}) : super(key: key);
  static const routeName = 'broadcastMessage';

  @override
  _BroadcastMessageViewState createState() => _BroadcastMessageViewState();
}

class _BroadcastMessageViewState extends State<BroadcastMessageView> {
  @override
  Widget build(BuildContext context) {
    final _appBar = AppBarwidget(
      backgroundColor: Colors.grey[100],
      actionName: 'SEND',
      title: 'Broadcast Message',
      centerTitle: true,
      onChange: () {
        print('adada');
      },
    );

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: _appBar,
      body: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Hello broadcast message view !'),
            ),
          )
        ],
      ),
    );
  }
}
