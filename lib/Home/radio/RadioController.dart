import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/radio/RadioResponce.dart';
import 'package:audioplayers/audioplayers.dart';

class RadioController extends StatefulWidget {

  Radios radio;

  Function play;
  Function pause;

  RadioController(this.radio, this.play, this.pause);


  @override
  State<RadioController> createState() => _RadioControllerState();
}

class _RadioControllerState extends State<RadioController> {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      //padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(

        children: [
          Text(
              widget.radio.name ?? '',
              textAlign: TextAlign.center,
              //AppLocalizations.of(context)!.quran_kareem,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_previous),
                iconSize: 30,
                color: Theme
                    .of(context)
                    .accentColor,
              ),
              IconButton(
                  onPressed: () {
                    widget.play();
                  },
                  icon: Icon(Icons.play_arrow),
                  iconSize: 50, color: Theme
                  .of(context)
                  .accentColor),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  iconSize: 30, color: Theme
                  .of(context)
                  .accentColor),
            ],
          )
        ],
      ),
    );
  }
}
