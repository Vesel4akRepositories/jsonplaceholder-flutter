import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/entities/user.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/manager/profile_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/widgets/profile_body.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/widgets/profile_error_view.dart';

class ProfilePage extends StatelessWidget {
  final User _user;

  const ProfilePage(this._user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('@${_user.username}'),
      ),
      body: SafeArea(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          bloc: context.read<ProfileBloc>()
            ..add(ProfileEvent.fetch(userId: _user.id)),
          builder: (context, state) {
            if (state is ProfileLoadedState) {
              return ProfileBody(userProfile: state.userProfile);
            } else if (state is ProfileErrorState) {
              return ProfileErrorView(errorMessage: state.message ?? '');
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ),
      ),
    );
  }
}

class ProfileScreenArgs {
  final User user;

  ProfileScreenArgs(this.user);
}
