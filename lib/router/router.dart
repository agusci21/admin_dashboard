import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //Auth Routes

  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard

  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    //Auth Routes
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    //router.define(registerRoute, handler: handler) TODO Definir ruta
    router.notFoundHandler = NoPageFoundHandler.noPageFound;
  }
}
