import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api/api.dart';
import 'auth/auth.dart';
import 'home/home.dart';

/// Wraper widget para los providers y el api
/// ventaja: las instancias de providers y api no están tan arriba en el widget tree
class Application extends StatelessWidget {
  final API _api;
  const Application(this._api);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider(
          create: (context) => _api.authState,
        ),
      ],
      child: AppAPI(
        api: _api,
        child: FutureBuilder<bool>(
          future: _api.verifySignedIn(),
          builder: (context, snapshot) {
            if (snapshot.data) {
              return HomePage();
            }
            return AuthenticationPage();
          },
        ),
      ),
    );
  }
}
