import 'package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart';
import 'package:cine_verse/app/pages/pokemons_page/widget/pokemon_info_widget.dart';
import 'package:cine_verse/data/data_source/utils/storage_service.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockStorageService extends Mock implements StorageService {}

void main() {
  setUpAll(() {
    /// Register fallback value for PokemonResponse
    registerFallbackValue(const PokemonResponse(
      name: 'TestPokemon',
      imageUrl: 'https://example.com/test.png',
      generation: 'Generation I',
      abilities: ['TestAbility'],
      types: ['TestType'],
      stats: [Stat(name: 'HP', baseStat: 50)],
      height: 5,
      weight: 60,
      baseExperience: 100,
    ));
  });

  late MockStorageService mockStorage;
  late SavedPokemonsCubit cubit;

  setUp(() {
    mockStorage = MockStorageService();

    when(() => mockStorage.getAllPokemonNames()).thenReturn([]);
    when(() => mockStorage.getPokemon(any())).thenReturn(null);
    when(() => mockStorage.savePokemon(any())).thenAnswer((_) async {});
    when(() => mockStorage.removePokemon(any())).thenAnswer((_) async {});
    when(() => mockStorage.savePokemonOrder(any())).thenAnswer((_) async {});

    cubit = SavedPokemonsCubit(mockStorage);
  });

  testWidgets('PokemonInfoWidget displays correct Pokemon info',
      (WidgetTester tester) async {
    const testPokemon = PokemonResponse(
      name: 'pikachu',
      imageUrl: 'https://example.com/pikachu.png',
      generation: 'Generation I',
      abilities: ['Static', 'Lightning Rod'],
      types: ['Electric'],
      stats: [
        Stat(name: 'HP', baseStat: 35),
        Stat(name: 'Attack', baseStat: 55),
      ],
      height: 4,
      weight: 60,
      baseExperience: 112,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BlocProvider<SavedPokemonsCubit>.value(
            value: cubit,
            child: PokemonInfoWidget(
                key: ValueKey(testPokemon.name), pokemon: testPokemon),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('PIKACHU'), findsOneWidget);
    expect(find.text('Static, Lightning Rod'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
