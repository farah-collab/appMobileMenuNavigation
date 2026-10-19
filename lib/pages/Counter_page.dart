import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter",style: TextStyle(color: Colors.pink)),
      ),
      body: Center(
        child: Text(('Counter Value =>$counter')),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "remove",
            onPressed: () {
              setState(() {
                --this.counter;
              });

            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            heroTag: "add",
            onPressed: () {
              setState(() {
                ++this.counter;

              });

            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}