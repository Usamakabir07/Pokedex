import 'package:bloc_test/bloc_test.dart';
import 'package:cine_verse/app/common_widgets/app_error_text_widget.dart';
import 'package:cine_verse/app/common_widgets/app_progress_indicator.dart';
import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemon_cubit.dart'
    as pokemons;
import 'package:cine_verse/app/pages/pokemons_page/widget/surprise_me_button.dart';
import 'package:cine_verse/app/router/app_router.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart'
    as entity;
import 'package:cine_verse/domain/utils/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auto_route/auto_route.dart';

import 'package:cine_verse/app/pages/pokemons_page/widget/pokemon_page_body.dart'
    as page;
import 'package:cine_verse/app/pages/login_page/cubit/auth_cubit.dart' as auth;
import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemons_state.dart'
    as pokemons_state;
import 'package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart'
    as saved;
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart'
    as search;
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_state.dart'
    as search_state;

class MockAuthCubit extends Mock implements auth.AuthCubit {}

class MockGetPokemonsCubit extends Mock implements pokemons.GetPokemonsCubit {}

class MockSavedPokemonsCubit extends Mock implements saved.SavedPokemonsCubit {}

class MockSearchPokemonCubit extends Mock
    implements search.SearchPokemonCubit {}

class MockAutoRouter extends Mock implements StackRouter {}

class MockPokemonResponse extends Mock implements entity.PokemonResponse {
  @override
  String get name => 'Pikachu';
  @override
  String get imageUrl => 'https://example.com/pikachu.png';
  @override
  List<String> get abilities => ['Thunderbolt', 'Quick Attack'];
}

// Mock AuthState (based on provided definition)
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoggedIn extends AuthState {
  final String email;
  final String password;
  AuthLoggedIn({required this.email, required this.password});
}

class AuthLoggedOut extends AuthState {}

void main() {
  late MockAuthCubit mockAuthCubit;
  late MockGetPokemonsCubit mockGetPokemonsCubit;
  late MockSavedPokemonsCubit mockSavedPokemonsCubit;
  late MockSearchPokemonCubit mockSearchPokemonCubit;
  late MockAutoRouter mockRouter;

  setUp(() {
    mockAuthCubit = MockAuthCubit();
    mockGetPokemonsCubit = MockGetPokemonsCubit();
    mockSavedPokemonsCubit = MockSavedPokemonsCubit();
    mockSearchPokemonCubit = MockSearchPokemonCubit();
    mockRouter = MockAutoRouter();

    when(() => mockRouter.push(any())).thenAnswer((_) async => null);
    when(() => mockRouter.replace(any())).thenAnswer((_) async => null);

    // when(() => mockAuthCubit.state).thenReturn(
    //     const Autj(email: 'test@example.com', password: 'password'));
    when(() => mockGetPokemonsCubit.state)
        .thenReturn(const pokemons_state.GetPokemonsState.initial());
    when(() => mockSavedPokemonsCubit.state).thenReturn([]);
    when(() => mockSearchPokemonCubit.state)
        .thenReturn(const search_state.SearchPokemonState.initial());

    // Mock cubit methods
    when(() => mockSavedPokemonsCubit.loadSavedPokemons()).thenAnswer((_) {});
    when(() => mockAuthCubit.logout()).thenAnswer((_) async {});
    when(() => mockGetPokemonsCubit.getPokemons()).thenAnswer((_) async {});
  });

  Widget buildWidgetUnderTest() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<auth.AuthCubit>(create: (_) => mockAuthCubit),
        BlocProvider<pokemons.GetPokemonsCubit>(
            create: (_) => mockGetPokemonsCubit),
        BlocProvider<saved.SavedPokemonsCubit>(
            create: (_) => mockSavedPokemonsCubit),
        BlocProvider<search.SearchPokemonCubit>(
            create: (_) => mockSearchPokemonCubit),
      ],
      child: MaterialApp(
        home: StackRouterScope(
          controller: mockRouter,
          stateHash: 0,
          child: const page.PokemonPageBody(),
        ),
      ),
    );
  }

  group('PokemonPageBody', () {
    testWidgets('displays loading indicator when GetPokemonsState is loading',
        (WidgetTester tester) async {
      when(() => mockGetPokemonsCubit.state)
          .thenReturn(const pokemons_state.GetPokemonsState.loading());

      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      expect(find.byType(AppProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'displays empty message when GetPokemonsState is success with empty data',
        (WidgetTester tester) async {
      when(() => mockGetPokemonsCubit.state).thenReturn(
          const pokemons_state.GetPokemonsState.success(pokemons: []));

      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      expect(find.text('Pokémons will appear here'), findsOneWidget);
    });

    testWidgets(
        'displays pokemon list when GetPokemonsState is success with data',
        (WidgetTester tester) async {
      final pokemon = MockPokemonResponse();
      when(() => mockSavedPokemonsCubit.isSaved(pokemon.name))
          .thenReturn(false);
      when(() => mockGetPokemonsCubit.state).thenReturn(
          pokemons_state.GetPokemonsState.success(pokemons: [pokemon]));

      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      expect(find.byType(ListView), findsOneWidget);
      expect(find.text('PIKACHU'), findsOneWidget);
    });

    testWidgets('displays error message when GetPokemonsState is error',
        (WidgetTester tester) async {
      const errorMessage = 'Failed to load Pokémon';
      when(() => mockGetPokemonsCubit.state)
          .thenReturn(const pokemons_state.GetPokemonsState.error(Failure()));

      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      expect(find.byType(AppErrorTextWidget), findsOneWidget);
      expect(find.text(errorMessage), findsOneWidget);
    });

    testWidgets('navigates to search route when search icon is tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      await tester.tap(find.byIcon(Icons.search_rounded));
      await tester.pump();

      verify(() => mockRouter.push(const SearchPokemonRoute())).called(1);
      verify(() => mockSavedPokemonsCubit.loadSavedPokemons()).called(1);
    });

    testWidgets(
        'navigates to saved pokemons route when bookmark icon is tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      await tester.tap(find.byIcon(Icons.collections_bookmark_outlined));
      await tester.pump();

      verify(() => mockRouter.push(
              SavedPokemonRoute(savedPokemonsCubit: mockSavedPokemonsCubit)))
          .called(1);
      verify(() => mockSavedPokemonsCubit.loadSavedPokemons()).called(1);
    });

    testWidgets('triggers logout when logout icon is tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      await tester.tap(find.byIcon(Icons.logout));
      await tester.pump();

      verify(() => mockAuthCubit.logout()).called(1);
    });

    testWidgets('navigates to login route when AuthLoggedOut state is emitted',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      whenListen(
        mockAuthCubit as BlocBase<AuthState>,
        Stream.fromIterable([AuthLoggedOut()]),
        initialState:
            AuthLoggedIn(email: 'test@example.com', password: 'password'),
      );

      await tester.pump();

      verify(() => mockRouter.replace(const LoginRoute())).called(1);
    });

    testWidgets('triggers getPokemons when SurpriseMeButton is pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(buildWidgetUnderTest());
      await tester.pump();

      await tester.tap(find.byType(SurpriseMeButton));
      await tester.pump();

      verify(() => mockGetPokemonsCubit.getPokemons()).called(1);
    });
  });
}
