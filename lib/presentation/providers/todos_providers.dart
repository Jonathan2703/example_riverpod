import 'package:example/config/config.dart';
import 'package:example/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

enum FilterType{
  all,
  completed,
  pending
}

const uuid = Uuid();

@riverpod
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() {
    return FilterType.all;
  }

  void setCurrentFilter( FilterType newFilter ){
    state = newFilter;
  }
}

@riverpod
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
  ];

  void createTodo(String description){
    final newTodo = Todo(id: uuid.v4(), description: description, completedAt: null);
    state = [...state, newTodo];
  }
}