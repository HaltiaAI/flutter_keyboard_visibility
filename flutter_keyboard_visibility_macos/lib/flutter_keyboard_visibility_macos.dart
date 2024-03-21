import 'package:flutter_keyboard_visibility_platform_interface/flutter_keyboard_visibility_platform_interface.dart';

/// The macOS implementation of the [FlutterKeyboardVisibilityPlatform] of the
/// FlutterKeyboardVisibility plugin.
class FlutterKeyboardVisibilityPluginMacos
    extends FlutterKeyboardVisibilityPlatform {

  /// Factory method that initializes the FlutterKeyboardVisibility plugin
  /// platform with an instance of the plugin for macOS.
  static void registerWith() {
    FlutterKeyboardVisibilityPlatform.instance =
        FlutterKeyboardVisibilityPluginMacos();
  }

  /// Emits changes to keyboard visibility from the platform. MacOS is not
  /// implemented yet so `notVisible` is returned.
  @override
  Stream<KeyboardVisibilityStatus> get onChange async* {
    yield KeyboardVisibilityStatus.notVisible;
  }
}
