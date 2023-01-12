export './src/cool_button.dart';
import 'cool_button_platform_interface.dart';

class CoolButton {
  Future<String?> getPlatformVersion() {
    return CoolButtonPlatform.instance.getPlatformVersion();
  }
}
