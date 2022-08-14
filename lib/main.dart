import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/injection/injection.dart';
import 'package:jsonplaceholder_bloc/core/utils/router.dart';
import 'package:jsonplaceholder_bloc/core/utils/routes.dart';
import 'package:jsonplaceholder_bloc/core/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.prod);

  runApp(const JsonpshApp());
}

class JsonpshApp extends StatelessWidget {
  const JsonpshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      theme: appThemeData,
      initialRoute: Routes.home,
    );
  }
}
