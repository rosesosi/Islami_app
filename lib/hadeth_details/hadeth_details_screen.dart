import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadithDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.getMainBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            elevation: 12,
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    args.content,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
