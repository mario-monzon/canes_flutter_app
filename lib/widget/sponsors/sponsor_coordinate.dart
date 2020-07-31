import 'package:canes_app/design/img.dart';
import 'package:canes_app/model/sponsor_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/sponsors/sponsors_grid_list_widget.dart';
import 'package:flutter/material.dart';

class SponsorListWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const SponsorListWidget({
    Key key,
  }) : super(key: key);

  @override
  _SponsorListState createState() => _SponsorListState();
}

class _SponsorListState extends State<SponsorListWidget> {
  List<Sponsor> sponsorList;

  @override
  void initState() {
    sponsorList = List();

    Sponsor _sponsor = Sponsor(
        name: 'Sponsor',
        logo: Img.canes,
        web: 'http://teldecanes.es/index.php/en/');

    for (int i = 0; i < 5; i++) {
      sponsorList.add(_sponsor);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SponsorGridList(
          sponsorList: sponsorList,
          status: Status.loaded,
        )
      ],
    );
  }
}
