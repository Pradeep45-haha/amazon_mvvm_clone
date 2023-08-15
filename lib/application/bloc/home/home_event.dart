import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent {}

class ChangePageEvent extends HomeEvent {
  final int pageIndex;
  ChangePageEvent({required this.pageIndex});
}
