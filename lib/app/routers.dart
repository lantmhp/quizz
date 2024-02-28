import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/app/router_name.dart';
import 'package:quizz/pages/article/articlepage.dart';
import 'package:quizz/pages/category/categorypage.dart';
import 'package:quizz/pages/home/homepage.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RoutersPath.homePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
      routes: <RouteBase>[
        GoRoute(
          name: RouterName.categoryName,
          path: RoutersPath.categoryPath,
          builder: (BuildContext context, GoRouterState state) {
            return const CategoryPage();
          },
          routes: <RouteBase>[
            GoRoute(
              name: RouterName.articleName,
              path: RoutersPath.articlePath,
              builder: (BuildContext context, GoRouterState state) {
                return const ArticlePage();
              },
            ),
          ],
        ),
      ],
    )
  ]
);
}