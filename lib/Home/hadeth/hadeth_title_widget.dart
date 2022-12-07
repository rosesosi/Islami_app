import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  String title;
  int index;

  HadethTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.pushNamed(context, SuraDetailsScreen.routeName,
      //       arguments: SuraDetailsARgs(suraName: title, index: index));
      // },
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
