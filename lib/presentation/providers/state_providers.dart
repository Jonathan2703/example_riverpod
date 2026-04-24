import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increseByOne() => state++;
}


// DarkMode -> boolean default false
//void toggleDarkMode
@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode () => state = !state;
}

//Username -> String 
//default 'Melisa Flores'
//changeName(String name)
//(usernameProvider.notifier).changeName(RandomGenerator.getRandomName())

@riverpod
class Username extends _$Username {
  @override
  String build() => 'Melisa Flores';

  void changeName(String name) => state = name;
}
