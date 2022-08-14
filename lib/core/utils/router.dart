import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/core/injection/injection.dart';
import 'package:jsonplaceholder_bloc/feature/home/presentation/manager/home_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/home/presentation/pages/home_page.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/presentation/manager/profile_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/presentation/pages/profile_page.dart';

import 'routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<HomeBloc>(
                create: (context) => getIt()..add(const HomeEvent.fetch()),
                child: const HomePage()));
      case Routes.profile:
        final profileScreenArgs = settings.arguments as ProfileScreenArgs;
        return MaterialPageRoute(
            builder: (_) => BlocProvider<ProfileBloc>(
                create: (context) => getIt(),
                child: ProfilePage(profileScreenArgs.user)));

      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
