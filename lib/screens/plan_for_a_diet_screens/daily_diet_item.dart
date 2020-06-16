import 'package:flutter/material.dart';

class DailyDietItem extends StatelessWidget {
  final int _index;

  DailyDietItem(this._index);

  void _clickDailyItem(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/daily-detail-screen', arguments: {'index': _index},);
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    // TODO: implement DailyDietItem build
    return Card(
      child: GridTile(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: screenHeight / 15,
              child: Text('Day $_index'),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30.0,
                    onPressed: () => _clickDailyItem(context),
                  ),
                  IconButton(
                    icon: Icon(Icons.check_circle),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}