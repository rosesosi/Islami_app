import 'package:flutter/material.dart';
import 'package:islami_app/sura_details/sura_details_Screen.dart';
import 'package:islami_app/sura_details/sura_details_arguments.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsARgs(suraName: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
