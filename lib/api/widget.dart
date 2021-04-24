part of 'api.dart';

class AppAPI extends InheritedWidget {
  final API api;

  const AppAPI({@required this.api, @required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static AppAPI of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppAPI>();
  }
}
