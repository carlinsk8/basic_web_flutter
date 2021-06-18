import 'package:fluro/fluro.dart';

import 'package:bases_web/router/route_handlres.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
    );
    router.define(
      '/stateful',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
    );
    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
    );
    router.define(
      '/provider',
      handler: counterHandlerProvider,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
    );
    router.define(
      '/dashboard/users/:user/:roleid',
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
    );

    //404 not found
    router.notFoundHandler = notFoundHandler;
  }
}
