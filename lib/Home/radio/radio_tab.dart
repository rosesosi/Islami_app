import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text(
              AppLocalizations.of(context)!.quran_kareem,
              style: Theme.of(context).textTheme.headline4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
              Icon(Icons.play_arrow,
                  size: 50, color: Theme.of(context).accentColor),
              Icon(Icons.skip_next,
                  size: 30, color: Theme.of(context).accentColor),
            ],
          )
        ],
      ),
    );
  }
}
