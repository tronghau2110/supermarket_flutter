import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supermarket_flutter/presentation/notification/notification.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

part 'login_bloc.g.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  /// {@macro counter_bloc}
  LoginBloc() : super(const LoginState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
      status: LoginStatus.loading,
    ));
    emit(state.copyWith(
      status: LoginStatus.success,
      notification: const Notification.success(
        message: 'Đăng nhập thành công',
      ),
    ));
  }
}
