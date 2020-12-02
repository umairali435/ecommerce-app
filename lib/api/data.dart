import 'package:blocpractice/api/bloc/alnbums/bloc.dart';
import 'package:blocpractice/api/bloc/alnbums/events.dart';
import 'package:blocpractice/api/bloc/alnbums/states.dart';
import 'package:blocpractice/model/albumlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  void initState() {
    super.initState();
    _fetchAlbum();
  }

  _fetchAlbum() async {
    context.bloc<AlbumBloc>().add(AlbumEvents.fetchAlbum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Practice"),
      ),
      body: Column(
        children: [
          BlocBuilder<AlbumBloc, AlbumStates>(
              builder: (BuildContext context, AlbumStates states) {
            if (states is AlbumErrorState) {
              final errror = states.error;
              return Text(errror.message);
            }
            if (states is AlbumLoadedState) {
              List<Album> albums = states.album;
              return Expanded(
                child: ListView.builder(
                    itemCount: albums.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(albums[index].title);
                    }),
              );
            }
            return CircularProgressIndicator();
          }),
        ],
      ),
    );
  }
}
