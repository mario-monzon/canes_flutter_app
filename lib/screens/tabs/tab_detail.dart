import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

// ignore: public_member_api_docs
class TabDetailScreen extends StatelessWidget {
  // ignore: public_member_api_docs, sort_constructors_first
  const TabDetailScreen({this.numberTap});

  // ignore: public_member_api_docs
  final String numberTap;

  @override
  Widget build(BuildContext context) {
    final buildArgs =
        numberTap ?? ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        // ignore: unnecessary_string_interpolations
        title: Text('${S.of(context).this_is_detail_tap}'),
      ),
      body: Container(
        child: Center(
          child: Text('${S.of(context).this_is_detail_tap} $buildArgs'),
        ),
      ),
    );
  }
}
