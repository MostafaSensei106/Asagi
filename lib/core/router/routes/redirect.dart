import '../app_router.dart';

Future<AppRoute> getStartRoute() async {
  return const MainRouteEntry();
}

List<AppRoute> authGuard(List<AppRoute> current, List<AppRoute> proposed) {
  return proposed;
}
