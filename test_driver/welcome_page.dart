// Imports the Flutter Driver API.
import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('ผู้ใช้งานทำการเข้าใช้ app', () {
    late FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });

    test('เปิด app แล้วเจอหน้า welcome', () async {
       sleep(Duration(seconds:5 ));
      await driver.waitFor(find.byValueKey("welcome-image"));
      await driver.waitFor(find.text("Voca"));
      await driver.waitFor(find.text("Learn and improve vocabulary \nanywhere, any time."));
      await driver.waitFor(find.byValueKey("next-button"));
      await driver.waitFor(find.text("Get started"));
    });
  });
}