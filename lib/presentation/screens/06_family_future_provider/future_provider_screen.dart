import 'package:example/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {

  int pokemonId = 3;

  @override
  Widget build(BuildContext context) {

    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon id $pokemonId'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (pokemonName) => 
            Text(
              pokemonName, 
              style: const 
              TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold
                ),),
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              pokemonId++;
              setState(() {});
            },
            child: const Icon(Icons.arrow_forward),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'previous',
            onPressed: () {
              if (pokemonId > 1) {
                pokemonId--;
                setState(() {});
              }
            },
            child: const Icon(Icons.minimize_outlined),
          ),
        ],
      )
    );
  }
}