part of 'stats_bloc.dart';

enum StatsStatus { initail, loading, success, failure }

class StatsState extends Equatable {
  const StatsState({
    this.status = StatsStatus.initail,
    this.completedTodos = 0,
    this.activeTodos = 0,
  });

  final StatsStatus status;
  final int completedTodos;
  final int activeTodos;

  @override
  List<Object> get props => [status, completedTodos, activeTodos];

  StatsState copyWith({
    StatsStatus? status,
    int? completedTodos,
    int? activeTodos,
  }) {
    return StatsState(
      status: status ?? this.status,
      completedTodos: completedTodos ?? this.completedTodos,
      activeTodos: activeTodos ?? this.activeTodos,
    );
  }

}
