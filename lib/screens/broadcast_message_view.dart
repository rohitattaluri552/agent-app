import 'package:agent_app/widgets/app_bar_widget.dart';
import 'package:agent_app/widgets/select_contact(s).dart';
import 'package:flutter/material.dart';

class BroadcastMessageView extends StatefulWidget {
  BroadcastMessageView({Key key}) : super(key: key);
  static String routeName = 'broadcastMessage';

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
      leadingIcon: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => Navigator.of(context).pop(),
      ),
      onChange: () {
        print('adada');
      },
    );
    final List strings = [
      {'title': 'a'},
      {'title': 'b'},
      {'title': 'c'},
      {'title': 'd'},
      {'title': 'e'},
      {'title': 'a'},
      {'title': 'b'},
      {'title': 'c'},
      {'title': 'd'},
      {'title': 'e'},
    ];

        Widget templatesList() {
      return Expanded(
        child: ListView.builder(
          itemCount: strings.length,
          itemBuilder: (BuildContext bc, int index) {
            return Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: InkWell(
                    onTap: () => print('message clicked'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        strings[index]['title'] != null
                            ? Container(
                                padding: EdgeInsets.all(16.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  strings[index]['title'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(fontSize: 16),
                                ),
                              )
                            : Container(),
                        Divider(height: 0),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      );
    }

    _onBottomBtnClicked(tabName) {
      print(strings.length);
      return showModalBottomSheet(
        context: context,
        elevation: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    child: AppBar(
                      title: Text(
                        tabName,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      backgroundColor: Theme.of(context).canvasColor,
                      centerTitle: true,
                      leading: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      brightness: Theme.of(context).brightness,
                      iconTheme:
                          IconThemeData(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  templatesList(),
                ],
              ),
            ),
          );
        },
      );
    }


    return Scaffold(  
      backgroundColor: Theme.of(context).canvasColor,
      appBar: _appBar,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: InkWell(
                child: Text(
                  'Recent'.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () => _onBottomBtnClicked('recent'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: InkWell(
                child: Text(
                  'Templates'.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () => _onBottomBtnClicked('templates'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: InkWell(
                child: Text(
                  'labels'.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () => _onBottomBtnClicked('labels'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SelectContactReceipt(onTap: () => print('asdafafaafa')),
        ],
      ),
    );
  }
}
