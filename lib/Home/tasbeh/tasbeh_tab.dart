import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int Counter = 0;
  double angle = 0;

  int currentIndex = 0;
  List<String> azkarTitle = [
    'سبحان الله',
    'الحمد الله',
    ' الله اكبر',
    'استغفر الله',
  ];

  void changeAngle() {
    angle--;
    // Counter++;
    // if(Counter == 34){
    //   currentIndex++;
    //   Counter = 0;
    // }
    // if(currentIndex > azkarTitle.length-1){
    //   currentIndex=0;
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.46,
              child: Stack(
                children: [
                  Positioned(
                      left: MediaQuery.of(context).size.width * .48,
                      child: Image.asset(settingProvider.isDarkMode()
                          ? 'assets/images/head_sebha_dark.png'
                          : 'assets/images/head_sebha_logo.png')),
                  Positioned(
                      top: 78,
                      left: MediaQuery.of(context).size.width * 0.20,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          changeAngle();
                        },
                        child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(settingProvider.isDarkMode()
                              ? 'assets/images/body_sebha_dark.png'
                              : 'assets/images/body_sebha_logo.png'),
                        ),
                      )),
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              AppLocalizations.of(context)!.tasbehat_number,
              style: (Theme.of(context).textTheme.headline4),
            ),
          ),
          Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor),
            padding: EdgeInsets.all(15),
            child: Text(
              Counter.toString(),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {
                Counter++;
                if (Counter == 35) {
                  currentIndex++;
                  Counter = 0;
                }
                if (currentIndex > azkarTitle.length - 1) {
                  currentIndex = 0;
                }
                setState(() {});
              },
              child: Text(
                azkarTitle[currentIndex],
                style: Theme.of(context).textTheme.headline6,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}
