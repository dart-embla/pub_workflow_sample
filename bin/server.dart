import 'package:embla/http.dart';
import 'package:embla/http_basic_middleware.dart';

export 'package:embla/bootstrap.dart';

get embla => [
  new HttpBootstrapper(
    pipeline: pipe(

      // This will be available on GET /todos
      Route.get('todos', () => [
        {'title': 'Learn Embla', 'completed': true},
        {'title': 'Buy groceries', 'completed': false},
        {'title': 'Ride a unicorn', 'completed': false},
      ]),

      // This delegates to Pub
      PubMiddleware
    )
  )
];
