import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'flutter_boost_example_route.dart';
import 'flutter_boost_example_route_helper.dart';
import 'simple_page_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    ///native=>flutter
    FlutterBoost.singleton.registerDefaultPageBuilder(
        (String pageName, Map params, String uniqueId) {
      final routeResult = getRouteResult(
        name: pageName,
        arguments: params?.map(
            (key, value) => MapEntry<String, dynamic>(key.toString(), value)),
      );
      return routeResult.widget ?? NoRouteWiget();
    });
    FlutterBoost.singleton.addBoostNavigatorObserver(FFNavigatorObserver(
        routeChange: (
      Route newRoute,
      Route oldRoute,
    ) {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boost example',
      builder: FlutterBoost.init(postPush: _onRoutePushed),
      home: Container(color: Colors.white),

      ///flutter=>flutter
      onGenerateRoute: (settings) => onGenerateRouteHelper(
        settings,
        notFoundFallback: NoRouteWiget(),
      ),
    );
  }

  void _onRoutePushed(
      String pageName, String uniqueId, Map params, Route route, Future _) {}
}

class NoRouteWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('no route found!'),
      ),
    );
  }
}
