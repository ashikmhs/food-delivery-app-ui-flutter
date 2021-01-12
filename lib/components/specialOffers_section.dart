import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  SpecialOffers({this.image, this.title, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: 120,
              width: 130,
              child: Image.asset(image),
            ),
          ),
//          SizedBox(
//            height: 10,
//          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
              ),
            ),
          ),
//          SizedBox(
//            height: 10,
//          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                price,
                style: TextStyle(color: Colors.black, fontSize: 17.0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 38,
              width: double.infinity,
              color: Color(0xFFB90039),
              child: Center(
                child: Text(
                  'OFFER',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
