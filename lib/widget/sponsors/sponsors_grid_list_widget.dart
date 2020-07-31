import 'package:canes_app/model/sponsor_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/sponsors/sponsor_list_item.dart';
import 'package:flutter/material.dart';

class SponsorGridList extends StatelessWidget {
  const SponsorGridList({Key key, this.sponsorList, this.status})
      : super(key: key);

  final List<Sponsor> sponsorList;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(sponsorList.length ?? 0, (index) {
          return SponsorListItem(sponsor: sponsorList[index]);
        }));
  }
}
