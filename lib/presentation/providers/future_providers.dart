import 'package:example/config/helpers/pokemon_information.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_providers.g.dart';

@Riverpod( keepAlive: true )
Future<String> pokemonName(PokemonNameRef ref) async{
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  ref.onDispose((){
    print("Estamos a punto de destruir el provider");
  });

  return pokemonName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void nextPokemon() => state++;

  void previousPokemon() {
    if (state > 1) {
      state--;
    }
  }
}