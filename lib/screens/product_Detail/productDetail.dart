import 'package:fcbapp/models/location.dart';
import 'package:fcbapp/screens/product_Detail/image_banner.dart';
import 'package:fcbapp/screens/product_Detail/text_section.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final zero = 0;
  int _programId;
  Location location;

  //ProductDetail(this._programId);
  ProductDetail(int pId) {
    this._programId = pId;
    location = Location.fetchByID(pId + zero);
  }

  int getCProgramId() {
    return this._programId;
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((e) => TextSection(e.title, e.text)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location)),
        ));
  }
}
