// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginState _$$_LoginStateFromJson(Map<String, dynamic> json) =>
    _$_LoginState(
      status: $enumDecodeNullable(_$LoginStatusEnumMap, json['status']) ??
          LoginStatus.initial,
      notification: json['notification'] == null
          ? null
          : Notification.fromJson(json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginStateToJson(_$_LoginState instance) =>
    <String, dynamic>{
      'status': _$LoginStatusEnumMap[instance.status]!,
      'notification': instance.notification,
    };

const _$LoginStatusEnumMap = {
  LoginStatus.initial: 'initial',
  LoginStatus.loading: 'loading',
  LoginStatus.success: 'success',
  LoginStatus.failure: 'failure',
};
