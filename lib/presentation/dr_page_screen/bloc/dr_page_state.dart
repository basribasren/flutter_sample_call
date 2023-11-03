// ignore_for_file: must_be_immutable

part of 'dr_page_bloc.dart';

/// Represents the state of DrPage in the application.
class DrPageState extends Equatable {
  DrPageState({this.drPageModelObj});

  DrPageModel? drPageModelObj;

  @override
  List<Object?> get props => [
        drPageModelObj,
      ];
  DrPageState copyWith({DrPageModel? drPageModelObj}) {
    return DrPageState(
      drPageModelObj: drPageModelObj ?? this.drPageModelObj,
    );
  }
}
