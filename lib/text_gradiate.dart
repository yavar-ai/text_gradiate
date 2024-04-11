import "package:flutter/material.dart";

class TextGradiate extends StatelessWidget {
  const TextGradiate({
    required this.text,
    required this.colors,
    super.key,
  });
  final Widget text;
  final List<Color> colors;

  @override
  Widget build(final BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (final Rect bounds) => LinearGradient(
          colors: colors,
        ).createShader(
          Rect.fromLTWH(
            0,
            0,
            bounds.width,
            bounds.height,
          ),
        ),
        child: text,
      );
}
