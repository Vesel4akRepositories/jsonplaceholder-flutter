import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/core/widgets/gap/gap.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/presentation/widgets/user_information_view.dart';

import 'user_company_view.dart';

class ProfileBody extends StatelessWidget {
  final UserProfile userProfile;

  const ProfileBody({required this.userProfile, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: ListView(
        children: [
          const Gap(
            kDefaultPadding,
          ),
          UserInformationView(
            userProfile: userProfile,
          ),
          const Gap(
            kDefaultPadding * 2,
          ),
          UserCompanyView(
            company: userProfile.company,
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
