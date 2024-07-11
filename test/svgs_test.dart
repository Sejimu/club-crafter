import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:clubcrafter/src/core/utils/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.bg).existsSync(), isTrue);
    expect(File(Svgs.facebook).existsSync(), isTrue);
    expect(File(Svgs.google).existsSync(), isTrue);
    expect(File(Svgs.heart).existsSync(), isTrue);
    expect(File(Svgs.icon).existsSync(), isTrue);
    expect(File(Svgs.lock).existsSync(), isTrue);
    expect(File(Svgs.setting).existsSync(), isTrue);
    expect(File(Svgs.ticket).existsSync(), isTrue);
    expect(File(Svgs.union).existsSync(), isTrue);
    expect(File(Svgs.userSquare).existsSync(), isTrue);
    expect(File(Svgs.vis).existsSync(), isTrue);
  });
}
