import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    AssetsAudioPlayer? assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaPlayer"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const CircleAvatar(
                radius: 80,
                child: Icon(Icons.music_note,size: 80,),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                   GestureDetector(
                     onTap: (){
                      setState(() {
                        //create a new player

                      //  if(assetsAudioPlaye== null){}
                        assetsAudioPlayer!.open(
                          Playlist(
                            audios: [

                              Audio(
                                'assets/audio/2.mp3',
                                //playSpeed: 2.0,
                                metas: Metas(
                                  id: 'Rock',
                                  title: 'حمراء',
                                  artist: 'حمو الطيخا',
                                  album: 'RockAlbum',
                                  image: const MetasImage.asset("assets/images/2.jpg"),
                                ),),
                              Audio(
                                'assets/audio/3.mp3',
                                //playSpeed: 2.0,
                                metas: Metas(
                                  id: 'Rock',
                                  title: 'Rock',
                                  artist: 'Rock',
                                  album: 'RockAlbum',
                                  image: const MetasImage.asset("assets/images/2.jpg"),
                                ),),
                            ]
                          ),


                          //autoStart: true,
                          showNotification: true,
                        );
                        assetsAudioPlayer!.play();
                      });
                     },
                     child: const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.play_arrow,size: 50,),
                  ),
                   ),
                  GestureDetector(
                    onTap:(){
                      setState(() {
                       assetsAudioPlayer!.pause();
                       // assetsAudioPlayer.pause();
                      });
                    },
                    child: const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.pause,size: 50,),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        assetsAudioPlayer!.stop();
                        assetsAudioPlayer = AssetsAudioPlayer();


                      });
                    },
                    child: const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.stop,size: 50,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
