part of 'admin_bloc.dart';

@immutable
abstract class AdminState {}

class AdminInitial extends AdminState {}

class PageChangedState extends AdminState {}

class ChangedCategoryValue extends AdminState {}

class SelectedProductImagesState extends AdminState {
  final List<File> images;
  SelectedProductImagesState({required this.images});
}

class AddProductToSellSuccessState extends AdminState {}

class AddProductToSellFailedState extends AdminState {}
