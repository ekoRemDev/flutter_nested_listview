import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 256.00,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Title'),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: <Widget>[
                _buildListRow(),
                _buildListRow(),
                _buildListRow(),
                _buildListRow(),
                _buildListRow(),
                _buildListRow(),
              ],
            )
          ]))
        ],
      ),
    );
  }
}


class _buildListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          "Header",
          style: Theme.of(context).textTheme.body2,
        ),
      ),
      ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.00),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('nested list item $index'),
          );
        },
        itemCount: 6,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
      ),
    ],);
  }
}

