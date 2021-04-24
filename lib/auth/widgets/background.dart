part of '../auth.dart';

class LoginBackground extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<LoginBackground> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.01 * _offset.dy)
        ..rotateY(-0.01 * _offset.dx),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: (details) => setState(() => _offset += details.delta),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: Image.asset(
          "assets/img/paperback.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
