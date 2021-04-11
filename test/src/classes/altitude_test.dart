import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('Altitude', () {
    test('init and properties', () {
      final altitude = const Altitude(
        lower: 1200,
        upper: 1300,
        unit: AltitudeUnit.feet,
      );

      expect(altitude.props, [1200, 1300, AltitudeUnit.feet]);
    });

    test('get range, rangeInFeet, rangeInMeters', () {
      final altitude1 = const Altitude(
        lower: 1200,
        upper: 1300,
        unit: AltitudeUnit.feet,
      );

      expect(altitude1.range, [1200, 1300]);
      expect(altitude1.rangeInFeet, [1200, 1300]);
      expect(altitude1.rangeInMeters, [366, 396]);

      final altitude2 = const Altitude(
        lower: 1200,
        upper: 1300,
        unit: AltitudeUnit.meters,
      );

      expect(altitude2.range, [1200, 1300]);
      expect(altitude2.rangeInMeters, [1200, 1300]);
      expect(altitude2.rangeInFeet, [3937, 4265]);
    });
  });
}
