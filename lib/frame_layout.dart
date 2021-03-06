import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:materialweb/widgets/footer.dart';
import 'package:materialweb/widgets/logo.dart';
import 'package:materialweb/widgets/plain_text.dart';

//import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'Pages/contact_page.dart';
import 'Pages/home_page.dart';
import 'Pages/project_page.dart';
import 'drawer.dart';
import 'layout/adaptive.dart';

const appBarDesktopHeight = 56.0;

class FrameLayout extends StatelessWidget {
  const FrameLayout();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    final body = SafeArea(
      child: TabBarView(
        children: [
          PagescrollerFrame(child: HomePage()),
          PagescrollerFrame(child: ProjectPage()),
          PagescrollerFrame(child: ContactPage()),
        ],
      ),
    );

    if (isDesktop) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: const AdaptiveAppBar(
            isDesktop: true,
          ),
          body: body,
        ),
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
          ? Logo()
          : Center(
              child: Logo(),
            ),
      bottom: !isDesktop
          ? TabBar(
              tabs: [
                Tab(
                  child: PlainText(
                    text: 'Home',
                  ),
                ),
                Tab(
                  child: PlainText(
                    text: 'Projects',
                  ),
                ),
                Tab(
                    child: PlainText(
                  text: 'Contact',
                )),
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
                      child: PlainText(
                        text: 'Home',
                      ),
                    ),
                    Tab(
                      child: PlainText(
                        text: 'Projects',
                      ),
                    ),
                    Tab(
                        child: PlainText(
                      text: 'Contact',
                    )),
                  ],
                ),
              ),
            ]
          : null,
    );
  }
}

class PagescrollerFrame extends StatelessWidget {
  PagescrollerFrame({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
            padding: isDesktop
                ? const EdgeInsets.only(top: 48, left: 72, right: 72)
                : const EdgeInsets.only(top: 16, left: 24, right: 24),
            child: child),
        Align(alignment: Alignment.bottomCenter, child: Footer())
      ],
    ));
  }
}
