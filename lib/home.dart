import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'drawer.dart';
import 'layout/adaptive.dart';

const appBarDesktopHeight = 56.0;

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    final body = SafeArea(
      child: Padding(
        padding: isDesktop
            ? const EdgeInsets.symmetric(horizontal: 72, vertical: 48)
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'starter app',
              style: textTheme.headline3.copyWith(
                color: colorScheme.onSecondary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Subtitle',
              style: textTheme.subtitle1,
            ),
            const SizedBox(height: 48),
            Text(
              'GalleryLocalizations.of(context).starterAppGenericBody',
              style: textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );

    if (isDesktop) {
      return Row(
        children: [
          //ListDrawer(),
          //const VerticalDivider(width: 1),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: const AdaptiveAppBar(
                  isDesktop: true,
                ),
                body: body,
              ),
            ),
          ),
        ],
      );
    } else {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: const AdaptiveAppBar(),
          body: body,
          //drawer: ListDrawer(),
        ),
      );
    }
  }
}

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdaptiveAppBar({
    Key key,
    this.isDesktop = false,
  }) : super(key: key);

  final bool isDesktop;

  @override
  Size get preferredSize => isDesktop
      ? const Size.fromHeight(appBarDesktopHeight)
      : const Size.fromHeight(kToolbarHeight * 2);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return AppBar(
      automaticallyImplyLeading: !isDesktop,
      title: isDesktop
          ? Text(
              'Saman Arian Portfolio',
            )
          : Center(
              child: Text(
                'Saman Arian Portfolio',
              ),
            ),
      bottom: !isDesktop
          ? TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'home',
                    style: themeData.textTheme.headline6.copyWith(
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'projects',
                    style: themeData.textTheme.headline6.copyWith(
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'contact',
                    style: themeData.textTheme.headline6.copyWith(
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            )
          : null,
      actions: isDesktop
          ? [
              Container(
                width: 320,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'home',
                        style: themeData.textTheme.headline6.copyWith(
                          color: themeData.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'projects',
                        style: themeData.textTheme.headline6.copyWith(
                          color: themeData.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'contact',
                        style: themeData.textTheme.headline6.copyWith(
                          color: themeData.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          : null,
    );
  }
}
