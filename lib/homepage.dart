import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text("Main Item $index",style: Theme.of(context).textTheme.body2,),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10.00),
                      child: Text('Detail Item no $index'),
                    );
                  },
                  itemCount: 10,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                ),
              ],
            ),
          );
        },
        itemCount: 6,
        shrinkWrap: true,
      ),
    );
  }
}
