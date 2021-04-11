import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('BrewMethod', () {
    test('init and properties', () {
      const steps = [
        'Rinse paper in V60 and pre heat it',
        'Pour in grams coffee, make a well with your finger in the coffee bed',
        '...',
      ];

      final brew = const BrewMethod(
        title: 'James Hoffman V60',
        type: BrewType.pourOver,
        steps: steps,
      );

      expect(brew.props, [
        'James Hoffman V60',
        BrewType.pourOver,
        'Rinse paper in V60 and pre heat it',
        'Pour in grams coffee, make a well with your finger in the coffee bed',
        '...',
      ]);
    });
  });
}
