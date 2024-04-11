# Text Gradiate Package

![Version Badge](https://img.shields.io/pub/v/text_gradiate?color=green)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![GitHub repo](https://img.shields.io/badge/GitHub-purple?logo=github)](https://github.com/Ruban-07/text_gradiate)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/ruban-raghavendar-k/)
[![Gmail](https://img.shields.io/badge/Gmail-Send%20Email-red?style=flat-square&logo=gmail)](mailto:rubanraghavendar@gmail.com)

[![Android](https://img.shields.io/badge/Android-Supported-brightgreen)](https://developer.android.com/)
[![iOS](https://img.shields.io/badge/iOS-Supported-brightgreen)](https://developer.apple.com/ios/)

A Flutter package for creating gradient text in an fastest way. This package allows you to add gradient effected text in your Flutter app effortlessly.

## Features

- Easily create text with gradient colors.
- Customize gradient colors to match your design.

## Installation

To use this package, add `text_gradiate` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  text_gradiate: ^1.0.0
```

Then, import the package into your Dart code:

```dart
import 'package:text_gradiate/text_gradiate.dart';
```

## Usage

Wrap your text widget with `TextGradiate` and specify the desired gradient colors.

```dart
TextGradiate(
  text: Text(
    'Hello, Gradient!',
    style: TextStyle(fontSize: 24.0),
  ),
  colors: [Colors.blue, Colors.green],
)
```

## Example

Here's a simple example that shows how to use the `TextGradiate` widget:

```dart
import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextGradiate Example'),
        ),
        body: Center(
          child: TextGradiate(
            text: Text(
              'Hello, Gradient!',
              style: TextStyle(fontSize: 24.0),
            ),
            colors: [Colors.blue, Colors.green],
          ),
        ),
      ),
    );
  }
}
```

## Support

- Android: Supported on SDK 16 and above.
- iOS: Supported on iOS 11.0 and above.
- Linux: Any Linux distribution.
- macOS: Supported on macOS 10.14 and above.
- Web: Supported on all web browsers.
- Windows: Supported on all Windows versions.

---
