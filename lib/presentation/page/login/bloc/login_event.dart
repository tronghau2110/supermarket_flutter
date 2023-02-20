part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.refreshed() = _Refreshed;

  const factory LoginEvent.unitsChanged() = _UnitsChanged;
}

