import 'package:flutter/material.dart';
import 'package:state_mgmt_example/src/blocs/counterBloc.dart';
import 'package:state_mgmt_example/src/providers/blocProvider.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
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
              stream: counterBloc.outCounter,
              initialData: 0,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) => Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.incrementCounter.add(null),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
