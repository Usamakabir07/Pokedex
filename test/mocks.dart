import 'package:cine_verse/app/pages/login_page/cubit/auth_cubit.dart';
import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemon_cubit.dart';
import 'package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart';

// Mock Cubits
class MockAuthCubit extends Mock implements AuthCubit {}

class MockGetPokemonsCubit extends Mock implements GetPokemonsCubit {}

class MockSavedPokemonsCubit extends Mock implements SavedPokemonsCubit {}

class MockSearchPokemonCubit extends Mock implements SearchPokemonCubit {}

class MockAutoRouter extends Mock implements StackRouter {}

// Mock AuthState
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoggedIn extends AuthState {
  final String email;
  final String password;
  AuthLoggedIn({required this.email, required this.password});
}

class AuthLoggedOut extends AuthState {}

// Mock SearchPokemonState
class SearchPokemonState {
  const SearchPokemonState();
  const factory SearchPokemonState.initial() = SearchPokemonInitial;
  const factory SearchPokemonState.loading() = SearchPokemonLoading;
  const factory SearchPokemonState.success(
      {required List<PokemonResponse> pokemons}) = SearchPokemonSuccess;
  const factory SearchPokemonState.error(String error) = SearchPokemonError;
}

class SearchPokemonInitial extends SearchPokemonState {
  const SearchPokemonInitial();
}

class SearchPokemonLoading extends SearchPokemonState {
  const SearchPokemonLoading();
}

class SearchPokemonSuccess extends SearchPokemonState {
  final List<PokemonResponse> pokemons;
  const SearchPokemonSuccess({required this.pokemons});
}

class SearchPokemonError extends SearchPokemonState {
  final String error;
  const SearchPokemonError(this.error);
}

// Mock PokemonResponse
class MockPokemonResponse extends Mock implements PokemonResponse {
  @override
  String get name => 'Pikachu';
  @override
  String get imageUrl => 'https://example.com/pikachu.png';
  @override
  List<String> get abilities => ['Thunderbolt', 'Quick Attack'];
}
