import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/core/injection/injection.dart';
import 'package:jsonplaceholder_bloc/feature/home/presentation/manager/home_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/home/presentation/pages/home_page.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/manager/post_info_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/pages/post_info_page.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/manager/posts_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/manager/profile_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/pages/profile_page.dart';

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
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider<ProfileBloc>(create: (context) => getIt()),
                  BlocProvider<PostsBloc>(
                      create: (context) => getIt()
                        ..add(PostsEvent.fetch(
                            userId: profileScreenArgs.user.id))),
                ], child: ProfilePage(profileScreenArgs.user)));
      case Routes.postInfo:
        final postInfoPageArgs = settings.arguments as PostInfoPageArgs;
        final post = postInfoPageArgs.post;
        return MaterialPageRoute(
            builder: (_) => BlocProvider<PostInfoBloc>(
                create: (context) => getIt(),
                child: PostInfoPage(post: post)));
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
