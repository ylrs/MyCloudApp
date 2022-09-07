import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_cloud/my_cloud.dart';

void main() {
  const MethodChannel channel = MethodChannel('my_cloud');

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
    expect(await MyCloud.platformVersion, '42');
  });
}
