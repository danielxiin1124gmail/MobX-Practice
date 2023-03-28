import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'counter_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final CounterStore _counterStore = CounterStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(
                builder: (_) => Text(
                  'Count: ${_counterStore.count}',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _counterStore.increment,
                child: Text('Increment'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _counterStore.decrement,
                child: Text('Decrement'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
