import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'cool_button_platform_interface.dart';

/// An implementation of [CoolButtonPlatform] that uses method channels.
class MethodChannelCoolButton extends CoolButtonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('cool_button');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
