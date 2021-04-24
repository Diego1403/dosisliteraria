import 'package:dosis_literaria/home/components/drawer/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final Widget child;
  CustomDrawer({key, this.child}) : super(key: key);

  static CustomDrawerState of(BuildContext context) =>
      context.findAncestorStateOfType<CustomDrawerState>();

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  static const double maxSlide = 255;
  static const dragRightStartVal = 60;
  static const dragLeftStartVal = maxSlide - 20;
  static bool shouldDrag = false;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void toggle() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

//start logica de drag
  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void _onDragStart(DragStartDetails startDetails) {
    bool isDraggingFromLeft = _animationController.isDismissed &&
        startDetails.globalPosition.dx < dragRightStartVal;
    bool isDraggingFromRight = _animationController.isCompleted &&
        startDetails.globalPosition.dx > dragLeftStartVal;
    shouldDrag = isDraggingFromLeft || isDraggingFromRight;
  }

  void _onDragUpdate(DragUpdateDetails updateDetails) {
    if (shouldDrag == false) {
      return;
    }
    double delta = updateDetails.primaryDelta / maxSlide;
    _animationController.value += delta;
  }

  void _onDragEnd(DragEndDetails dragEndDetails) {
    if (_animationController.isDismissed || _animationController.isCompleted) {
      return;
    }

    double _kMinFlingVelocity = 205.0;
    double dragVelocity = dragEndDetails.velocity.pixelsPerSecond.dx.abs();

    if (dragVelocity >= _kMinFlingVelocity) {
      double visualVelocityInPx = dragEndDetails.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      _animationController.fling(velocity: visualVelocityInPx);
    } else if (_animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext, _) {
          double animationVal = _animationController.value;
          double translateVal = animationVal * maxSlide;
          double scaleVal = 1 - (animationVal * 0.3);
          return Stack(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration:
                  BoxDecoration(color: Theme.of(context).backgroundColor),
              child: AppDrawer(),
            ),
            Transform(
              alignment: Alignment.centerLeft,
              transform: Matrix4.identity()
                ..translate(translateVal)
                ..scale(scaleVal),
              child: GestureDetector(
                  onTap: () {
                    if (_animationController.isCompleted) {
                      close();
                    }
                  },
                  child: widget.child),
            )
          ]);
        },
      ),
    );
  }
}
