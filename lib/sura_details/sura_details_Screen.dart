import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/sura_details/sura_details_arguments.dart';
import 'package:islami_app/sura_details/verse_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsARgs? args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsARgs;
    //read file ht25d w2t ad eh ?? bt25d w2t le3'yt ma tsht3'l keda
    // hw2f el build
    if (verses.isEmpty) readfile(args.index + 1);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: Card(
            elevation: 18,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 64, horizontal: 16),
            child: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (_, index) {
                      return VerseWidget(verses[index], index + 1);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (_, index) {
                      return Container(
                        color: Theme.of(context).primaryColor,
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      );
                    }),
          )),
    );
  }

  // code fe baceground
  // contexct msh ynf3 fe initalstate
  void readfile(int indexOffile) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$indexOffile.txt');
    List<String> lines = fileContent.trim().split('\n');
    verses = lines;

    setState(() {});
  }
}
