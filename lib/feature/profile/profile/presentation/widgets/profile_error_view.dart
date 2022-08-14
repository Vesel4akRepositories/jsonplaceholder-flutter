import 'package:flutter/material.dart';

class ProfileErrorView extends StatelessWidget {
  final String errorMessage;

  const ProfileErrorView({required this.errorMessage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage),
    );
  }
}
