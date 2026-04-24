// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'1b36c10b83fa648680045b7ab5c2f93a61087616';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilterHash() => r'43252b318e6ed963b965e01e3d4d13331b3c53eb';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    NotifierProvider<TodoCurrentFilter, FilterType>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = Notifier<FilterType>;
String _$todosHash() => r'159ce1d02a1fcebf246e26bcec44b6ef8e79b246';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = NotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
