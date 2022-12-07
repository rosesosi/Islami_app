import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset('assets/images/head_sebha_logo.png'),
          Image.asset('assets/images/body_sebha_logo.png'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Tasbehat',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amberAccent),
            padding: EdgeInsets.all(15),
            child: Text(
              Counter.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Counter++;
                });
              },
              child: Text('Sobhan Allah'),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}
