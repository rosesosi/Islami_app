import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadeth_model.dart';
import 'package:islami_app/hadeth_details/hadeth_details_screen.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethModel hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
