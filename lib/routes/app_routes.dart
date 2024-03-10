import 'package:flutter/material.dart';
import 'package:myhome/presentation/ApplicationsthreeScreen.dart';
import 'package:myhome/presentation/RoleSelect_screen.dart';
import 'package:myhome/presentation/introWindow.dart';
import 'package:myhome/presentation/login2.dart';
import 'package:myhome/presentation/map_screen.dart';
import 'package:myhome/presentation/register2.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/profile_screen.dart';
import 'package:myhome/presentation/toolbars_screen.dart';
import 'package:myhome/presentation/services_screen.dart';
import '../presentation/splashScreen.dart';


class AppRoutes {
  static const String menuScreen = '/menu_screen';

  static const String profileScreen = '/profile_screen';

  static const String toolbarsScreen = '/toolbars_screen';

  static const String servicesScreen = '/services_screen';

  static const String splashScreen = '/splashScreen';

  static const String introScreen = '/introScreen';

  static const String login2Screen = '/Login2';

  static const String register2Screen = '/Register2';

  static const String roleSelectScreen = '/SelectionItems';

  static const String mapscreen = '/mapScreen';

  static const String test = '/MyApp';

  static const String applicationScreen = '/ApplicationsthreeScreen';

  static Map<String, WidgetBuilder> routes = {
    menuScreen: (context) => MenuScreen(),
    profileScreen: (context) => ProfileScreen(),
    toolbarsScreen: (context) => ToolbarsScreen(),
    servicesScreen: (context) => ServicesScreen(),
    splashScreen: (context) => SplashScreen(),
    introScreen :(context) => IntroWindow(),
    login2Screen :(context) => Login2(),
    register2Screen :(context) => Register2(),
    roleSelectScreen : (context) => SelectionItems(),
    mapscreen : (context) => mapScreen(),
    applicationScreen : (context) => ApplicationScreen(),

  };
}
