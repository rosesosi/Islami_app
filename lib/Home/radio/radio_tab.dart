import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/Home/radio/RadioController.dart';
import 'package:islami_app/Home/radio/RadioResponce.dart';
import 'package:audioplayers/audioplayers.dart';


//http://api.mp3quran.net/radios/radio_arabic.json

//https://mp3quran.net/eng

class RadioTab extends StatefulWidget {

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late Future<RadioResponce> radioResponse;

  late AudioPlayer audioPlayer;

  String baseUrl = 'api.mp3quran.net';

  Future<RadioResponce> fetchRadio() async {
    var url = Uri.https(baseUrl, '/radios/radio_arabic.json');
    var responce = await http.get(url);
    if (responce.statusCode == 200) {
      return RadioResponce.fromJson(
          jsonDecode(utf8.decode(responce.bodyBytes)));
    }
    else {
      throw Exception('Faild to connect server');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioResponse = fetchRadio();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/radio_image.png')),

          FutureBuilder<RadioResponce>(
            future: radioResponse,
            builder: (buildContext, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      'error loading data .. ${snapshot.error.toString()}'),
                );
              }
              return Expanded(

                  flex: 1,
                  child: ListView.builder(
                      physics: PageScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.radios?.length,
                      itemBuilder: (buildContext, index) {
                        return RadioController(
                            snapshot.data!.radios![index], () {
                          play(snapshot.data!.radios![index].radioUrl ?? '');
                        }, () {
                          pause() {

                          }
                        });
                      }));
            },

          )


        ],
      ),
    );
  }

  play(String url) async {
    Source audioUrl = UrlSource(url);
    await audioPlayer.play(audioUrl);
  }

  pause() async {
    // await audioPlayer.pause();
  }
}
