// ignore_for_file: must_be_immutable

part of 'setting_screen_bloc.dart';

/// Represents the state of SettingScreen in the application.
class SettingScreenState extends Equatable {
  SettingScreenState({this.settingScreenModelObj});

  SettingScreenModel? settingScreenModelObj;

  @override
  List<Object?> get props => [
        settingScreenModelObj,
      ];

  SettingScreenState copyWith({SettingScreenModel? settingScreenModelObj}) {
    return SettingScreenState(
      settingScreenModelObj:
          settingScreenModelObj ?? this.settingScreenModelObj,
    );
  }
}
