import 'package:flutter/material.dart';
import 'package:islami_app/Home/Quran/quran_tab.dart';
import 'package:islami_app/Home/hadeth/hadeth_tab.dart';
import 'package:islami_app/Home/radio/radio_tab.dart';
import 'package:islami_app/Home/tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (newSelectedIndex) {
              setState(() {
                selectedIndex = newSelectedIndex;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/icon_quran.png')),
                  label: 'quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png')),
                  label: 'hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/icon_radio.png')),
                  label: 'radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/icon_sebha.png')),
                  label: 'sebha'),
            ],
          ),
          body: tabs[selectedIndex]),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), RadioTab(), TasbehTab()];
}
