import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Card(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: size.width * 2,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Diego Vasquez',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontFamily: 'Literata',
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                            width: size.width * 2,
                            color: Theme.of(context).primaryColorDark,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'usuario Premium',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                            fontFamily: 'Literata',
                                            fontSize: 30,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 2,
                                    color: Theme.of(context).backgroundColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "miembro desde abril 2020",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              fontFamily: 'Literata',
                                              fontSize: 15,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
