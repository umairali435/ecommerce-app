import 'dart:io';

import 'package:blocpractice/api/exception.dart';
import 'package:blocpractice/api/service.dart';
import 'package:blocpractice/model/albumlist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events.dart';
import 'states.dart';

class AlbumBloc extends Bloc<AlbumEvents, AlbumStates> {
  final AlbumRepo albumRepo;
  List<Album> albums;
  AlbumBloc({this.albumRepo}) : super(AlbumInitailState());
  @override
  Stream<AlbumStates> mapEventToState(AlbumEvents event) async* {
    switch (event) {
      case AlbumEvents.fetchAlbum:
        yield AlbumLoadingState();
        try {
          albums = await albumRepo.gettingData();
          yield AlbumLoadedState(album: albums);
        } on SocketException {
          yield AlbumErrorState(
              error: NoInterNetException(message: "No InterNext"));
        } on HttpException {
          yield AlbumErrorState(
              error: NoServiceFoundException(
                  message: "No Service Found Exception"));
        } on FormatException {
          yield AlbumErrorState(
              error:
                  InvalidFormatException(message: "Invalid Format Exception"));
        } catch (e) {
          yield AlbumErrorState(
              error: UnknownException(message: "Unknown Error Message"));
        }
        break;
      default:
    }
  }
}
