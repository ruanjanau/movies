import 'package:flutter/material.dart';

class AnimatedBorderButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const AnimatedBorderButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AnimatedBorderButtonState createState() => _AnimatedBorderButtonState();
}

class _AnimatedBorderButtonState extends State<AnimatedBorderButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: IntrinsicWidth(
        // Ajusta largura ao conteúdo
        child: CustomPaint(
          painter: BorderPainter(animation: _controller),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  final Animation<double> animation;

  BorderPainter({required this.animation}) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final borderWidth = 4.0;
    final radius = 8.0;

    final gradient = LinearGradient(
      colors: [Colors.blue, Colors.purple, Colors.red, Colors.blue],
      stops: [0.0, 0.5, 1.0, 1.5],
      begin: Alignment(-1 + animation.value * 2, 0.0),
      end: Alignment(1 + animation.value * 2, 0.0),
    );

    final paint = Paint()
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final rect = Rect.fromLTWH(
      borderWidth / 2,
      borderWidth / 2,
      size.width - borderWidth,
      size.height - borderWidth,
    );

    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
