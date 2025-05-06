import 'package:bloc_test/bloc_test.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:cine_verse/domain/utils/enums/app_error.dart';
import 'package:cine_verse/domain/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_state.dart';
import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';
import 'package:cine_verse/domain/use_case/search_pokemon_use_case.dart';

class MockSearchPokemonUseCase extends Mock implements SearchPokemonUseCase {}

class MockPokemonResponse extends Mock implements PokemonResponse {
  @override
  String get name => 'Pikachu';

  @override
  String get imageUrl => 'https://example.com/pikachu.png';

  @override
  List<String> get abilities => ['Thunderbolt', 'Quick Attack'];
}

void main() {
  late SearchPokemonCubit cubit;
  late MockSearchPokemonUseCase mockSearchPokemonUseCase;

  setUp(() {
    mockSearchPokemonUseCase = MockSearchPokemonUseCase();
    cubit = SearchPokemonCubit(mockSearchPokemonUseCase);
  });

  tearDown(() {
    cubit.close();
  });

  group('SearchPokemonCubit', () {
    const request = SearchPokemonRequest(name: 'Pikachu');
    final pokemon = MockPokemonResponse();
    final pokemons = [pokemon];

    test('initial state is SearchPokemonState.initial', () {
      expect(cubit.state, const SearchPokemonState.initial());
    });

    blocTest<SearchPokemonCubit, SearchPokemonState>(
      'emits [loading, success] when searchPokemon succeeds',
      build: () {
        when(() => mockSearchPokemonUseCase(any())).thenAnswer(
          (_) async => Right(pokemons),
        );
        return cubit;
      },
      act: (cubit) => cubit.searchPokemon(request),
      expect: () => [
        const SearchPokemonState.loading(),
        SearchPokemonState.success(pokemons: pokemons),
      ],
      verify: (_) {
        verify(() => mockSearchPokemonUseCase(request)).called(1);
      },
    );

    blocTest<SearchPokemonCubit, SearchPokemonState>(
      'emits [loading, error] when searchPokemon fails',
      build: () {
        when(() => mockSearchPokemonUseCase(any())).thenAnswer(
          (_) async => const Left(Failure(error: AppError.noPokemonFound)),
        );
        return cubit;
      },
      act: (cubit) => cubit.searchPokemon(request),
      expect: () => [
        const SearchPokemonState.loading(),
        const SearchPokemonState.error(Failure()),
      ],
      verify: (_) {
        verify(() => mockSearchPokemonUseCase(request)).called(1);
      },
    );
  });
}
