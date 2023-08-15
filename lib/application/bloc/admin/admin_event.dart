part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  factory AdminEvent.pageChanged({
    required int page,
  }) = PageChanged;
  factory AdminEvent.addProductPage() = AddProductPage;
  factory AdminEvent.logout() = Logout;
}
