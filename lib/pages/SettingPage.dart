import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => new _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final settings = [
    {
      'icon': new Icon(Icons.archive),
      'name': 'about',
      'title': new Text('关于'),
    },
    {
      'icon': new Icon(Icons.settings_backup_restore),
      'name': 'cache',
      'title': new Text('缓存'),
    },
    {
      'icon': new Icon(Icons.label),
      'name': 'version',
      'title': new Text('检查版本'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('设置'),
      ),
      body: new ListView.builder(
        itemCount: settings.length,
        itemBuilder: (BuildContext context, int index) {
          var item = settings[index];
          return new Column(
            children: <Widget>[
              new ListTile(
                  leading: item['icon'],
                  title: item['title'],
                  trailing: new Icon(Icons.keyboard_arrow_right),
                  onTap: () {}),
              new Divider(
                height: 0.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
