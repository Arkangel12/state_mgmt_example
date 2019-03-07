import 'package:flutter/material.dart';
import 'package:state_mgmt_example/src/models/appModelStreams.dart';
import 'package:state_mgmt_example/src/serviceLocator.dart';

class MyHomePageStreams extends StatelessWidget {
  MyHomePageStreams({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
              initialData: 0,
              stream: getIt.get<AppModelStreams>().counter,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) =>
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.display1,
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getIt.get<AppModelStreams>().incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
