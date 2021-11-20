import 'package:flutter/material.dart';
import 'package:netflix_/system/models/peliculas.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Proximamente extends StatefulWidget {
  const Proximamente({Key? key}) : super(key: key);

  @override
  _ProximamenteState createState() => _ProximamenteState();
}

class _ProximamenteState extends State<Proximamente> {
  Peliculas _proximamente = Peliculas();

  YoutubePlayerController _generatedController(String idVideo) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: idVideo,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );

    return _controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) => SizedBox(
                  child: Card(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        YoutubePlayer(
                            controller: _generatedController(
                                _proximamente.proximamente[index]["idVideo"]!),
                            bottomActions: [
                              CurrentPosition(),
                              ProgressBar(isExpanded: true),
                            ]),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 200.0,
                                child: Text(
                                  _proximamente.proximamente[index]["title"]!,
                                  softWrap: true,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Column(
                                children: const [
                                  Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      "Avisarme",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.0),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                children: const [
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      "Información",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.0),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _proximamente.proximamente[index]["descripcion"]!,
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _proximamente.proximamente[index]["tags"]!,
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                  height: 15.0,
                  thickness: 0.5,
                ),
            itemCount: _proximamente.proximamente.length));
  }
}
