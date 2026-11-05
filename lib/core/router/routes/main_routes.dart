part of '../app_router.dart';

sealed class MainRoute extends AppRoute {
  const MainRoute();
}

final class MainRouteEntry extends MainRoute {
  const MainRouteEntry();

  @override
  List<Object?> get props => [];
}

sealed class Home extends KaiselRoute {
  const Home();
}
