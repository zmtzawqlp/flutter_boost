// GENERATED CODE - DO NOT MODIFY MANUALLY
// **************************************************************************
// Auto generated by https://github.com/fluttercandies/ff_annotation_route
// **************************************************************************

import 'package:flutter/widgets.dart';

import 'simple_page_widgets.dart';

RouteResult getRouteResult({String name, Map<String, dynamic> arguments}) {
  switch (name) {
    case "embeded":
      return RouteResult(
        widget: EmbededFirstRouteWidget(),
        routeName: "embeded",
      );
    case "first":
      return RouteResult(
        widget: FirstRouteWidget(),
        routeName: "first",
      );
    case "firstFirst":
      return RouteResult(
        widget: SecondRouteWidget(),
        routeName: "firstFirst",
      );
    case "flutterFragment":
      return RouteResult(
        widget: FragmentRouteWidget(
          tag: arguments['tag'],
        ),
        routeName: "flutterFragment",
      );
    case "flutterPage":
      return RouteResult(
        widget: FlutterRouteWidget(
          params: arguments['params'],
          message: arguments['message'],
        ),
        routeName: "flutterPage",
      );
    case "platformView":
      return RouteResult(
        widget: PlatformRouteWidget(),
        routeName: "platformView",
      );
    case "second":
      return RouteResult(
        widget: FirstFirstRouteWidget(),
        routeName: "second",
      );
    case "secondStateful":
      return RouteResult(
        widget: SecondStatefulRouteWidget(),
        routeName: "secondStateful",
      );
    case "tab":
      return RouteResult(
        widget: TabRouteWidget(),
        routeName: "tab",
      );
    default:
      return RouteResult();
  }
}

class RouteResult {
  /// The Widget return base on route
  final Widget widget;

  /// Whether show this route with status bar.
  final bool showStatusBar;

  /// The route name to track page
  final String routeName;

  /// The type of page route
  final PageRouteType pageRouteType;

  /// The description of route
  final String description;

  const RouteResult({
    this.widget,
    this.showStatusBar = true,
    this.routeName = '',
    this.pageRouteType,
    this.description = '',
  });
}

enum PageRouteType { material, cupertino, transparent }

List<String> routeNames = [
  "embeded",
  "first",
  "firstFirst",
  "flutterFragment",
  "flutterPage",
  "platformView",
  "second",
  "secondStateful",
  "tab"
];

class Routes {
  const Routes._();

  /// embeded
  ///
  /// [name] : embeded
  /// [routeName] : embeded
  static const String EMBEDED = "embeded";

  /// first
  ///
  /// [name] : first
  /// [routeName] : first
  static const String FIRST = "first";

  /// firstFirst
  ///
  /// [name] : firstFirst
  /// [routeName] : firstFirst
  static const String FIRSTFIRST = "firstFirst";

  /// flutterFragment
  ///
  /// [name] : flutterFragment
  /// [routeName] : flutterFragment
  /// [arguments] : [tag]
  static const String FLUTTERFRAGMENT = "flutterFragment";

  /// flutterPage
  ///
  /// [name] : flutterPage
  /// [routeName] : flutterPage
  /// [arguments] : [params, message]
  static const String FLUTTERPAGE = "flutterPage";

  /// platformView
  ///
  /// [name] : platformView
  /// [routeName] : platformView
  static const String PLATFORMVIEW = "platformView";

  /// second
  ///
  /// [name] : second
  /// [routeName] : second
  static const String SECOND = "second";

  /// secondStateful
  ///
  /// [name] : secondStateful
  /// [routeName] : secondStateful
  static const String SECONDSTATEFUL = "secondStateful";

  /// tab
  ///
  /// [name] : tab
  /// [routeName] : tab
  static const String TAB = "tab";
}
