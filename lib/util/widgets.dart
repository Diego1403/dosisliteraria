import 'package:flutter/material.dart';

class MainFrame extends StatelessWidget {
  final Widget child;
  const MainFrame({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: child,
    );
  }
}

class BackgroundFrame extends StatelessWidget {
  final Widget background;
  final Widget child;
  const BackgroundFrame({this.background, this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(width: size.width, height: size.height, child: background),
        MainFrame(child: child)
      ],
    );
  }
}

class CenterRow extends StatelessWidget {
  final List<Widget> children;
  const CenterRow({this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: children,
    ));
  }
}

class CenterColumn extends StatelessWidget {
  final List<Widget> children;
  const CenterColumn({this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    ));
  }
}
