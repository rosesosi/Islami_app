import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/hadeth/hadeth_model.dart';
import 'package:islami_app/Home/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadethItems.isEmpty) readHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 2, child: Image.asset('assets/images/hadeth_logo.png')),
          Container(
            color: Theme.of(context).accentColor,
            height: 2,
            margin: EdgeInsets.all(8.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context)!.hadeth,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            color: Theme.of(context).accentColor,
            height: 2,
            margin: EdgeInsets.all(8.0),
          ),
          Expanded(
              flex: 5,
              child: allHadethItems.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      itemBuilder: (_, index) {
                        return HadethTitleWidget(allHadethItems[index]);
                      },
                      itemCount: allHadethItems.length,
                      separatorBuilder: (_, index) {
                        return Container(
                          color: Theme.of(context).accentColor,
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 64),
                        );
                      },
                    ))
        ],
      ),
    );
  }

  List<HadethModel> allHadethItems = [];

  void readHadethFile() async {
    List<HadethModel> allHadeth = [];
    var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    var allHaethContent = fileContent.trim().split('#');
    for (int i = 0; i < allHaethContent.length; i++) {
      String singleHadeth = allHaethContent[i];
      var singleHadethlines = singleHadeth.trim().split('\r\n');
      String title = singleHadethlines[0];
      singleHadethlines.removeAt(0);
      String content = singleHadethlines.join("\n");
      HadethModel hadeth = HadethModel(title: title, content: content);
      allHadeth.add(hadeth);
    }
    setState(() {
      allHadethItems = allHadeth;
    });
  }
}
