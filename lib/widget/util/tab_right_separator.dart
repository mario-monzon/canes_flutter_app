import 'package:flutter/material.dart';

class TabRightSeparator extends StatelessWidget {
  final String imagePath;
  final String text;

  const TabRightSeparator({Key key, this.imagePath, this.text})
      : super(key: key);

//  Widget tabRightSeparator(BuildContext context, String imagePath,
//      String text) {
//    return Container(
//      height: 30 + MediaQuery
//          .of(context)
//          .padding
//          .bottom,
//      padding: EdgeInsets.all(0),
//      width: double.infinity,
//      decoration: BoxDecoration(
//          border: Border(
//              right: BorderSide(
//                  color: Colors.grey, width: 1, style: BorderStyle.solid))),
//      child: Tab(
//        icon: imagePath != null ? ImageIcon(AssetImage(imagePath)) : null,
//        text: text != null ? text : null,
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30 + MediaQuery.of(context).padding.bottom,
      padding: EdgeInsets.all(0),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid))),
      child: Tab(
        icon: imagePath != null ? ImageIcon(AssetImage(imagePath)) : null,
        text: text != null ? text : null,
      ),
    );
  }
}
