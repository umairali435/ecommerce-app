import 'package:blocpractice/model/albumlist.dart';
import 'package:equatable/equatable.dart';

abstract class AlbumStates extends Equatable {
  @override
  List<Object> get props => [];
}

class AlbumInitailState extends AlbumStates {}

class AlbumLoadingState extends AlbumStates {}

class AlbumLoadedState extends AlbumStates {
  final List<Album> album;
  AlbumLoadedState({this.album});
}

class AlbumErrorState extends AlbumStates {
  final error;
  AlbumErrorState({this.error});
}
