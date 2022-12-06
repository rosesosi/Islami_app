import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/sura_details/sura_details_arguments.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  Widget build(BuildContext context) {
    SuraDetailsARgs? args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsARgs;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Container(
          child: Text('jjjjjjdjjjj'),
        ),
      ),
    );
  }
}
