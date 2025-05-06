// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/pages/login_page/cubit/auth_cubit.dart' as _i844;
import '../app/pages/pokemons_page/cubit/get_pokemon_cubit.dart' as _i673;
import '../app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart'
    as _i938;
import '../app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart'
    as _i141;
import '../data/data_source/app_data_source_impl.dart' as _i313;
import '../data/data_source/utils/storage_service.dart' as _i986;
import '../data/repositories/app_repository_impl.dart' as _i899;
import '../domain/data_source/app_data_source.dart' as _i882;
import '../domain/repositories/app_repository.dart' as _i788;
import '../domain/use_case/get_pokemon_use_case.dart' as _i882;
import '../domain/use_case/search_pokemon_use_case.dart' as _i835;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i986.StorageService>(() => _i986.StorageService());
  gh.factory<_i882.AppDataSource>(() => _i313.AppDataSourceImpl());
  gh.factory<_i938.SavedPokemonsCubit>(
      () => _i938.SavedPokemonsCubit(gh<_i986.StorageService>()));
  gh.factory<_i788.AppRepository>(
      () => _i899.AppRepositoryImpl(gh<_i882.AppDataSource>()));
  gh.factory<_i844.AuthCubit>(
      () => _i844.AuthCubit(gh<_i986.StorageService>()));
  gh.factory<_i882.GetPokemonUseCase>(
      () => _i882.GetPokemonUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i835.SearchPokemonUseCase>(
      () => _i835.SearchPokemonUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i141.SearchPokemonCubit>(
      () => _i141.SearchPokemonCubit(gh<_i835.SearchPokemonUseCase>()));
  gh.factory<_i673.GetPokemonsCubit>(
      () => _i673.GetPokemonsCubit(gh<_i882.GetPokemonUseCase>()));
  return getIt;
}
