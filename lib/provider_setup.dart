import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_start/core/enums/connectivity_status.dart';
import 'package:flutter_start/core/services/connectivity/connectivity_service.dart';
import 'package:flutter_start/locator.dart';

/// List of providers that provider transforms into a widget tree
/// with the main app as the child of that tree, so that the entire
/// app can use these streams anywhere there is a [BuildContext]
List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  //  Provider.value(value: Api())
];

List<SingleChildWidget> dependentServices = [
  // ProxyProvider<Api, AuthenticationService>(
  //   builder: (context, api, authenticationService) =>
  //       AuthenticationService(api: api),
  // )
];

List<SingleChildWidget> uiConsumableProviders = [
  StreamProvider<ConnectivityStatus>(
    create: (context) => locator<ConnectivityService>().connectivity$,
  ),
];
