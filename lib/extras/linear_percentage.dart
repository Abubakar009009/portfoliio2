import 'package:flutter/material.dart';

class LinearPercentageIndicator extends StatefulWidget {
  final double width;
  final double height;
  final double targetPercent;
  final Color backgroundColor;
  final Color progressColor;
  final Duration animationDuration;

  LinearPercentageIndicator({
    required this.width,
    required this.height,
    required this.targetPercent,
    required this.backgroundColor,
    required this.progressColor,
    this.animationDuration = const Duration(milliseconds: 500),
  });

  @override
  _LinearPercentageIndicatorState createState() =>
      _LinearPercentageIndicatorState();
}

class _LinearPercentageIndicatorState extends State<LinearPercentageIndicator> {
  late double _animatedPercent;

  @override
  void initState() {
    super.initState();
    _animatedPercent = 0.0;
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(widget.animationDuration, () {
      setState(() {
        _animatedPercent = widget.targetPercent;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        //borderRadius: BorderRadius.circular(widget.height / 2),
      ),
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: _animatedPercent),
        duration: widget.animationDuration,
        builder: (context, value, child) {
          return Stack(
            children: [
              Container(
                width: widget.width * value,
                height: widget.height,
                decoration: BoxDecoration(
                  color: widget.progressColor,
                  // borderRadius: BorderRadius.circular(widget.height / 2),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
