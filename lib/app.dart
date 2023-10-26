import 'package:app/pages/activity_log/activity_log.dart';
import 'package:app/pages/community_forum/community_menu.dart';
import 'package:app/pages/community_forum/forum_home.dart';
import 'package:app/pages/direct_messages/direct_message_list.dart';
import 'package:app/pages/feeding_schedule/edit_feeding_schedule.dart';
import 'package:app/pages/login/login.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/pet_details/pet_details.dart';
import 'package:app/pages/pet_food/detailed_pet_food.dart';
import 'package:app/pages/pet_food/pet_food.dart';
import 'package:app/pages/register/register.dart';
import 'package:app/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/activity_log/detailed_activity_log.dart';
import 'settings/settings_view.dart';

final themeStateProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

/// The Widget that configures your application.
class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeStateProvider);
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return MaterialApp(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: currentThemeMode,

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SettingsView.routeName:
                return const SettingsView();
              case LoginPage.routeName:
                return const LoginPage();
              case RegisterPage.routeName:
                return const RegisterPage();
              case Home.routeName:
                return const Home();
              case ActivityLogPage.routeName:
                return const ActivityLogPage();
              case Settings.routeName:
                return const Settings();
              case ForumHomePage.routeName:
                return const ForumHomePage();
              case PetDetails.routeName:
                return const PetDetails();
              case DirectMessageList.routeName:
                return const DirectMessageList();
              case DetailedActivityPage.routeName:
                return const DetailedActivityPage();
              case CommunityMenu.routeName:
                return const CommunityMenu();
              case PetFood.routeName:
                return const PetFood();
              case EditFeedingSchedule.routeName:
                return const EditFeedingSchedule();
              default:
                return const PetFoodPage();
            }
          },
        );
      },
    );
  }
}
