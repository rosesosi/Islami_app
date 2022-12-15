import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text(
            'Quran Kareem Radio ',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
              Icon(Icons.play_arrow,
                  size: 60, color: Theme.of(context).primaryColor),
              Icon(Icons.skip_next,
                  size: 40, color: Theme.of(context).primaryColor),
            ],
          )
        ],
      ),
    );
  }
}
