import 'dart:math';

import 'package:flutter/material.dart';

class CircularPercentageIndicator extends StatefulWidget {
  final double radius;
  final double targetPercent; // The target percentage to animate to
  final Color backgroundColor;
  final Color progressColor;
  final Duration animationDuration;

  CircularPercentageIndicator({
    required this.radius,
    required this.targetPercent,
    required this.backgroundColor,
    required this.progressColor,
    this.animationDuration = const Duration(seconds: 2),
  });

  @override
  _CircularPercentageIndicatorState createState() =>
      _CircularPercentageIndicatorState();
}

class _CircularPercentageIndicatorState
    extends State<CircularPercentageIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _animatedPercent = 0.0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: widget.targetPercent,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {
          _animatedPercent = _animation.value;
        });
      });

    _startAnimation();
  }

  void _startAnimation() {
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.radius * 2,
      height: widget.radius * 2,
      child: CustomPaint(
        painter: CircularPercentagePainter(
          currentPercent: _animatedPercent,
          backgroundColor: widget.backgroundColor,
          progressColor: widget.progressColor,
        ),
      ),
    );
  }
}

class CircularPercentagePainter extends CustomPainter {
  final double currentPercent;
  final Color backgroundColor;
  final Color progressColor;

  CircularPercentagePainter({
    required this.currentPercent,
    required this.backgroundColor,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final strokeWidth = 10.0;
    final startAngle = -0.5 * pi;
    final sweepAngle = 2 * pi * currentPercent;

    // Draw the background circle
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw the progress arc
    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
