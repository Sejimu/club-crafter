import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:clubcrafter/src/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.group49).existsSync(), isTrue);
    expect(File(Images.bg).existsSync(), isTrue);
    expect(File(Images.event).existsSync(), isTrue);
    expect(File(Images.facebook).existsSync(), isTrue);
    expect(File(Images.icon).existsSync(), isTrue);
    expect(File(Images.lock).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
    expect(File(Images.popular).existsSync(), isTrue);
    expect(File(Images.rc).existsSync(), isTrue);
    expect(File(Images.rec).existsSync(), isTrue);
    expect(File(Images.recom).existsSync(), isTrue);
    expect(File(Images.rectangle).existsSync(), isTrue);
    expect(File(Images.rectangleOne).existsSync(), isTrue);
    expect(File(Images.rectangleTwo).existsSync(), isTrue);
    expect(File(Images.recth).existsSync(), isTrue);
    expect(File(Images.seconSix).existsSync(), isTrue);
    expect(File(Images.secondFive).existsSync(), isTrue);
    expect(File(Images.secondFour).existsSync(), isTrue);
    expect(File(Images.secondOne).existsSync(), isTrue);
    expect(File(Images.secondThree).existsSync(), isTrue);
    expect(File(Images.secondTwo).existsSync(), isTrue);
    expect(File(Images.splash).existsSync(), isTrue);
    expect(File(Images.union).existsSync(), isTrue);
    expect(File(Images.vis).existsSync(), isTrue);
  });
}
