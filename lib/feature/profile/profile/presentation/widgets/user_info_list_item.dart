import 'package:flutter/material.dart';

class UserInfoListItem extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final TextStyle? titleStyle;

  const UserInfoListItem({this.iconData, this.titleStyle, this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        iconData,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
