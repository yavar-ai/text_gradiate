import 'package:flutter/material.dart';

/// Enum to specify the type of gradient.
enum GradientType {
  linear,
  radial,
  sweep,
}

/// A widget that applies a gradient effect to its child.
///
/// This widget applies a gradient effect to its child widget using the specified colors
/// and gradient type.
class TextGradiate extends StatelessWidget {
  /// Creates a TextGradiate widget.
  ///
  /// The [text] parameter specifies the child widget to which the gradient effect will be applied.
  /// The [colors] parameter specifies the list of colors to use for the gradient.
  /// The [gradientType] parameter specifies the type of gradient.
  /// The [begin] parameter specifies the starting point of the gradient (for linear gradients).
  /// The [end] parameter specifies the ending point of the gradient (for linear gradients).
  /// The [tileMode] parameter specifies the tiling strategy for the gradient (for linear gradients).
  /// The [center] parameter specifies the center point of the gradient (for radial gradients).
  /// The [focal] parameter specifies the focal point of the gradient (for radial gradients).
  /// The [focalRadius] parameter specifies the focal radius of the gradient (for radial gradients).
  /// The [startAngle] parameter specifies the starting angle of the gradient (for sweep gradients).
  /// The [endAngle] parameter specifies the ending angle of the gradient (for sweep gradients).
  /// The [stops] parameter specifies the stops of the gradient.
  /// The [transform] parameter specifies the transform matrix for the gradient.
  const TextGradiate({
    required this.text,
    required this.colors,
    this.gradientType = GradientType.linear,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.tileMode = TileMode.clamp,
    this.center = Alignment.center,
    this.focal = Alignment.center,
    this.focalRadius = 0.0,
    this.startAngle = 0.0,
    this.endAngle = 2 * 3.14, // Full circle
    this.stops,
    this.transform,
    super.key,
  });

  /// The child widget to which the gradient effect will be applied.
  final Widget text;

  /// The list of colors to use for the gradient.
  final List<Color> colors;

  /// The type of gradient.
  final GradientType gradientType;

  /// The starting point of the gradient (for linear gradients).
  final Alignment begin;

  /// The ending point of the gradient (for linear gradients).
  final Alignment end;

  /// The tiling strategy for the gradient (for linear gradients).
  final TileMode tileMode;

  /// The center point of the gradient (for radial gradients).
  final Alignment center;

  /// The focal point of the gradient (for radial gradients).
  final Alignment focal;

  /// The focal radius of the gradient (for radial gradients).
  final double focalRadius;

  /// The starting angle of the gradient (for sweep gradients).
  final double startAngle;

  /// The ending angle of the gradient (for sweep gradients).
  final double endAngle;

  /// The stops of the gradient.
  final List<double>? stops;

  /// The transform matrix for the gradient.
  final GradientTransform? transform;

  @override
  Widget build(BuildContext context) {
    if (gradientType == GradientType.linear) {
      // Apply linear gradient shader mask
      return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (final Rect bounds) => LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
          tileMode: tileMode,
          stops: stops,
          transform: transform,
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
    } else if (gradientType == GradientType.radial) {
      // Apply radial gradient shader mask
      return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (final Rect bounds) => RadialGradient(
          colors: colors,
          center: center,
          radius: 1.0,
          tileMode: tileMode,
          focal: focal,
          focalRadius: focalRadius,
          stops: stops,
          transform: transform,
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
    } else {
      // Apply sweep gradient shader mask
      return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (final Rect bounds) => SweepGradient(
          colors: colors,
          center: center,
          startAngle: startAngle,
          endAngle: endAngle,
          stops: stops,
          transform: transform,
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
  }
}
