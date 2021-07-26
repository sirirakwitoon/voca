import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('ผู้ใช้งานทำการกรอกข้อมูลส่วนตัว', () {
    late FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });

    test('ผู้ใช้งานกรอกข้อมูล', () async {
      sleep(Duration(seconds: 5));
      await driver.tap(find.byValueKey("next-button"));
      await driver.waitFor(find.byValueKey("title"));
      await driver.waitFor(find.text("Who are you?"));
      await driver.waitFor(find.text("Tell us about yourself"));
      await driver.waitFor(find.byValueKey("gender"));
      await driver.tap(find.byValueKey("gender-select-Male"));
      await driver.waitFor(find.text("Male"));
      await driver.waitFor(find.text("Female"));
      await driver.waitFor(find.byValueKey("inputName"));
      await driver.waitFor(find.byValueKey("age"));
      await driver.waitFor(find.byValueKey("next"));
      await driver.tap(find.byValueKey("inputName"));
      sleep(Duration(seconds: 5));
      await driver.enterText("Nutty");
      await driver.tap(find.byValueKey("age"));
      sleep(Duration(seconds: 3));
      await driver.tap(find.text("21-25"));
      sleep(Duration(seconds: 3));
      await driver.tap(find.byValueKey("next"));
      sleep(Duration(seconds: 3));


      

    });
  });
}
