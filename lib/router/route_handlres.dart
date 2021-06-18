import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_provier_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

final Handler counterHandler = new Handler(
  handlerFunc: (context, params) {
    print(params['base']?[0]);
    return CounterView(
      base: params['base']?[0] ?? '5',
    );
  },
);
final Handler counterHandlerProvider = new Handler(
  handlerFunc: (context, params) {
    return CounterProviderView(
      base: params['q']?[0] ?? '10',
    );
  },
);
final Handler dashboardUserHandler = new Handler(
  handlerFunc: (context, params) {
    print(params);
    return View404();
  },
);
//404
final Handler notFoundHandler = new Handler(
  handlerFunc: (context, params) => View404(),
);
