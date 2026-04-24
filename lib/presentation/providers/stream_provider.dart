import 'package:example/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stream_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {
  final names = <String>[];
  //yield names;

  await for (final name in RandomGenerator.randomNameStream()){
    names.add(name);
     yield names;
  }
}