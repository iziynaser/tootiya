import 'package:fcbapp/models/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const ProgramsRoute = '/';
const ProgramDetailRoute = '/program_detail';

class Programs extends StatelessWidget {
  void _onLocationTab(BuildContext context, int locationId) {
    Navigator.pushNamed(context, ProgramDetailRoute,
        arguments: {"id": locationId});
  }

  @override
  Widget build(BuildContext context) {
    final programs = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('programs'),
        ),
        body: ListView(
          children: programs
              .map((program) => GestureDetector(
                    child: Text(program.name),
                    onTap: () => _onLocationTab(context, program.id),
                  ))
              .toList(),
        ));
  }
}
