import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cool_button/cool_button_method_channel.dart';

void main() {
  MethodChannelCoolButton platform = MethodChannelCoolButton();
  const MethodChannel channel = MethodChannel('cool_button');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
