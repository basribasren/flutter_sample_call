// ignore_for_file: must_be_immutable

part of 'dr_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DrPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DrPageEvent extends Equatable {}

/// Event that is dispatched when the DrPage widget is first created.
class DrPageInitialEvent extends DrPageEvent {
  @override
  List<Object?> get props => [];
}
