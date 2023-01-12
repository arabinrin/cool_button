import 'package:flutter_test/flutter_test.dart';
import 'package:cool_button/cool_button.dart';
import 'package:cool_button/cool_button_platform_interface.dart';
import 'package:cool_button/cool_button_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCoolButtonPlatform
    with MockPlatformInterfaceMixin
    implements CoolButtonPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CoolButtonPlatform initialPlatform = CoolButtonPlatform.instance;

  test('$MethodChannelCoolButton is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCoolButton>());
  });

  test('getPlatformVersion', () async {
    CoolButton coolButtonPlugin = CoolButton();
    MockCoolButtonPlatform fakePlatform = MockCoolButtonPlatform();
    CoolButtonPlatform.instance = fakePlatform;

    expect(await coolButtonPlugin.getPlatformVersion(), '42');
  });
}
