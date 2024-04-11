import 'package:flutter/material.dart';

/// A widget that applies a gradient effect to its child.
///
/// This widget applies a gradient effect to its child widget using the specified colors.
class TextGradiate extends StatelessWidget {
  /// Creates a TextGradiate widget.
  ///
  /// The [text] parameter specifies the child widget to which the gradient effect will be applied.
  /// The [colors] parameter specifies the list of colors to use for the gradient.
  const TextGradiate({
    required this.text,
    required this.colors,
    super.key,
  });

  /// The child widget to which the gradient effect will be applied.
  final Widget text;

  /// The list of colors to use for the gradient.
  final List<Color> colors;

  @override
  Widget build(BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: colors,
          ).createShader(
            Rect.fromLTWH(
              0,
              0,
              bounds.width,
              bounds.height,
            ),
          );
        },
        child: text,
      );
}
