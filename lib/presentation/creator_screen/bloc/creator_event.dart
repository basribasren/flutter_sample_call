// ignore_for_file: must_be_immutable

part of 'creator_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Creator widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreatorEvent extends Equatable {}

/// Event that is dispatched when the Creator widget is first created.
class CreatorInitialEvent extends CreatorEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CreatorEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CreatorEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
