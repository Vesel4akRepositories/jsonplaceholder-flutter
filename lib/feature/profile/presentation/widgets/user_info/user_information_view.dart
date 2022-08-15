import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/core/widgets/gap/gap.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/widgets/user_info/user_company_view.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/widgets/user_info/user_info_list_item.dart';

class UserInformationView extends StatelessWidget {
  final UserProfile userProfile;

  const UserInformationView({required this.userProfile, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About user',
          style: Theme.of(context).textTheme.headline5,
        ),
        const Gap(
          kDefaultPadding * 2,
        ),
        Text(
          'Information',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.person,
          title: userProfile.name,
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.mail,
          title: userProfile.email,
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.phone,
          title: userProfile.phone,
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.globe,
          title: userProfile.website,
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
    );
  }
}
