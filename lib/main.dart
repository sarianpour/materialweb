import 'package:flutter/material.dart';
import 'package:materialweb/frame_layout.dart';
import 'package:materialweb/routes.dart';

import 'routes.dart' as routes;

void main() {
  runApp(StarterApp());
}

//const _primaryColor = Colors.green;
const _primaryColor = Color(0xFF2D333B);

class StarterApp extends StatelessWidget {
  const StarterApp();

  static const String defaultRoute = routes.defaultRoute;
  static const String adminRoute = routes.adminRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'starter_app',
      title: 'SArian Portfolio',
      debugShowCheckedModeBanner: false,
      //localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      //supportedLocales: GalleryLocalizations.supportedLocales,
      //locale: GalleryOptions.of(context).locale,
      initialRoute: StarterApp.defaultRoute,
      routes: {
        StarterApp.defaultRoute: (context) => const _DefaultView(),
        StarterApp.adminRoute: (context) => const _AdminView(),
      },
      theme: ThemeData(
        primaryColor: _primaryColor,
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Color(0xFF22272E),
        buttonColor: Color(0xFF4B6CC1),

        accentColor: _primaryColor,

        colorScheme: const ColorScheme(
          primary: _primaryColor,
          primaryVariant: Color(0xFF3700B3),
          secondary: Color(0xFF4B6CC1),
          secondaryVariant: Color(0xFF018786),
          background: Colors.white,
          surface: Colors.white,
          onBackground: Colors.black,
          error: Color(0xFFB00020),
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Color(0xFF4B6CC1),
          onSurface: Colors.white,
          brightness: Brightness.dark,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1,
          color: Color(0xFFE5E5E5),
        ),
        //platform: GalleryOptions.of(context).platform,
      ),
    );
  }
}

class _DefaultView extends StatelessWidget {
  const _DefaultView();

  @override
  Widget build(BuildContext context) {
    return FrameLayout();
  }
}

class _AdminView extends StatelessWidget {
  const _AdminView();

  @override
  Widget build(BuildContext context) {
    return Text('admin view');
  }
}
