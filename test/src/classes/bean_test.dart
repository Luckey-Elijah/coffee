import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('Bean', () {
    test('init and properties', () {
      final bean1 = const Bean(
        roaster: 'Roaster 1',
        name: 'Market',
        roast: Roast.lightMedium,
      );

      expect(bean1.roaster, 'Roaster 1');
      expect(bean1.name, 'Market');
      expect(bean1.roast, Roast.lightMedium);

      final bean2 = const Bean(
        roaster: 'Roaster 2',
        name: 'House Blend',
        roast: Roast.light,
        type: PlantType.robusta,
        countries: [Country.ET],
        altitude: Altitude(lower: 1200, upper: 1300),
        process: Process.natural,
        notes: ['Red wine', 'Pineapple'],
      );

      expect(bean2.props, [
        'Roaster 2',
        'House Blend',
        Roast.light,
        PlantType.robusta,
        null,
        [Country.ET],
        const Altitude(lower: 1200, upper: 1300),
        Process.natural,
        ['Red wine', 'Pineapple']
      ]);
    });
  });
}
