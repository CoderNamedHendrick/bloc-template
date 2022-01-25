import 'package:bloc_template/presentation/router/app_router.dart';
import 'package:bloc_template/utils/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(AppName(
      appRouter: AppRouter(),
    )),
    storage: storage,
    blocObserver: AppBlocObserver(),
  );
}

class AppName extends StatelessWidget {
  const AppName({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
