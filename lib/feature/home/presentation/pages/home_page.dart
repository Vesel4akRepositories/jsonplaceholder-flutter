import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/core/utils/routes.dart';
import 'package:jsonplaceholder_bloc/feature/home/presentation/manager/home_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/presentation/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: context.read<HomeBloc>(),
          builder: (context, state) {
            if (state is HomeLoadedState) {
              final users = state.users;
              return ListView.builder(
                itemBuilder: (_, index) => ListTile(
                  onTap: () => Navigator.pushNamed(context, Routes.profile,
                      arguments: ProfileScreenArgs(users[index])),
                  title: Text(users[index].name),
                  subtitle: Text('@${users[index].username}'),
                ),
                itemCount: users.length,
              );
            } else if (state is HomeErrorState) {
              return Text(state.message ?? '');
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          },
        ),
      ),
    );
  }
}
