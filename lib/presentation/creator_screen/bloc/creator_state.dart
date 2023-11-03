// ignore_for_file: must_be_immutable

part of 'creator_bloc.dart';

/// Represents the state of Creator in the application.
class CreatorState extends Equatable {
  CreatorState({
    this.twitterUrl = false,
    this.radioGroup = "",
    this.creatorModelObj,
  });

  CreatorModel? creatorModelObj;

  bool twitterUrl;

  String radioGroup;

  @override
  List<Object?> get props => [
        twitterUrl,
        radioGroup,
        creatorModelObj,
      ];
  CreatorState copyWith({
    bool? twitterUrl,
    String? radioGroup,
    CreatorModel? creatorModelObj,
  }) {
    return CreatorState(
      twitterUrl: twitterUrl ?? this.twitterUrl,
      radioGroup: radioGroup ?? this.radioGroup,
      creatorModelObj: creatorModelObj ?? this.creatorModelObj,
    );
  }
}
