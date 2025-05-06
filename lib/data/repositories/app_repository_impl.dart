import 'dart:io';

import 'package:cine_verse/data/data_source/utils/database_constants.dart';
import 'package:cine_verse/data/dto/response/pokemon/pokemon_response_dto.dart';
import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/data_source/app_data_source.dart';
import '../../domain/repositories/app_repository.dart';
import '../../domain/utils/enums/app_error.dart';
import '../../domain/utils/extension/error_extension.dart';
import '../../domain/utils/failure.dart';
import '../../domain/utils/success.dart';

@Injectable(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl(this._appDataSource);

  final AppDataSource _appDataSource;

  Future<Failure> _handleFailure(Object err) async {
    if (err is SocketException) {
      return const Failure(error: AppError.noInternetConnection);
    }

    if (err is DioException) {
      return Failure(error: toAppError(err.message!));
    }

    if (err is DioException) {
      if (err.response?.statusCode == 500) {
        final String? message = err.response!.data[DatabaseConstants.error];
        return Failure(error: toAppError(message!));
      }
    }
    return const Failure(error: AppError.defaultError);
  }

  @override
  Future<Either<Failure, Success>> login(
      {required String username, required String password}) async {
    try {
      await _appDataSource.login(username, password);
      return const Right(Success());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, List<PokemonResponse>>> getPokemons() async {
    try {
      final response = await _appDataSource.getPokemons();
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, List<PokemonResponse>>> searchPokemon(
      SearchPokemonRequest request) async {
    try {
      final response = await _appDataSource.searchPokemon(request.toDto);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }
}
