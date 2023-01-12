import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'cool_button_method_channel.dart';

abstract class CoolButtonPlatform extends PlatformInterface {
  /// Constructs a CoolButtonPlatform.
  CoolButtonPlatform() : super(token: _token);

  static final Object _token = Object();

  static CoolButtonPlatform _instance = MethodChannelCoolButton();

  /// The default instance of [CoolButtonPlatform] to use.
  ///
  /// Defaults to [MethodChannelCoolButton].
  static CoolButtonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CoolButtonPlatform] when
  /// they register themselves.
  static set instance(CoolButtonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
