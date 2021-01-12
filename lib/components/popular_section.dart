import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/round_icon_button.dart';

class Popular extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  Popular({this.image, this.title, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey, width: 0.3),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                  alignment: Alignment.topRight,
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00B970),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                  height: 80,
                  alignment: Alignment.bottomRight,
                  child: RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    iconBackgrounColor: Color(0xFFB90039),
                    iconColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
