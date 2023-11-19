import 'package:app/features/activity_log/presentation/activity_log.dart';
import 'package:app/features/activity_log/presentation/detailed_activity_log.dart';
import 'package:app/features/activity_log/presentation/form_fields/add_activity.dart';
import 'package:app/features/activity_log/presentation/form_fields/edit_activity.dart';
import 'package:app/features/activity_log/presentation/individual_activity.dart';
import 'package:app/features/authentication/presentation/login.dart';
import 'package:app/features/authentication/presentation/register.dart';
import 'package:app/features/community_forum/presentation/community_menu.dart';
import 'package:app/features/community_forum/presentation/forum_home.dart';
import 'package:app/features/direct_messages/presentation/direct_message_list.dart';
import 'package:app/features/home/presentation/home.dart';
import 'package:app/features/not_found/presentation/not_found.dart';
import 'package:app/features/pet_details/presentation/pet_details.dart';
import 'package:app/features/pet_food/presentation/detailed_pet_food.dart';
import 'package:app/features/pet_food/presentation/pet_food.dart';
import 'package:app/features/profile/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/features/feeding_schedule/presentation/edit_feeding_schedule.dart';
import 'features/settings/presentation/settings_view.dart';

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
              case Profile.routeName:
                return const Profile();
              case ForumHomePage.routeName:
                return const ForumHomePage();
              case PetDetails.routeName:
                return PetDetails();
              case DirectMessageList.routeName:
                return const DirectMessageList();
              case PetFoodPage.routeName:
                return const PetFoodPage();
              case DetailedActivityPage.routeName:
                return const DetailedActivityPage();
              case CommunityMenu.routeName:
                return const CommunityMenu();
              case PetFood.routeName:
                return const PetFood();
              case EditFeedingSchedule.routeName:
                return const EditFeedingSchedule();
              case AddActivity.routeName:
                return AddActivity();
              case EditActivity.routeName:
                return EditActivity();
              case IndividualActivity.routeName:
                return const IndividualActivity();
              default:
                return const NotFoundPage();
            }
          },
        );
      },
    );
  }
}
