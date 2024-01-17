import 'package:fit_daily/util/router/router_debug.dart';
import 'package:fit_daily/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:fit_daily/util/router/router.dart';

void main() {
  runApp(const App());
}

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fit Daily',
      theme: MyTheme.lightTheme,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          MyObserver(),
        ],
      ),
    );
  }
}
