import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_company.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/presentation/widgets/user_info_list_item.dart';

class UserCompanyView extends StatelessWidget {
  final UserCompany company;

  const UserCompanyView({required this.company, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.building_2_fill,
          title: company.name,
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.pen,
          title: '"${company.catchPhras}"',
          titleStyle: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(fontStyle: FontStyle.italic),
        ),
        UserInfoListItem(
          iconData: CupertinoIcons.bookmark,
          title: company.bs,
        ),
      ],
    );
  }
}
