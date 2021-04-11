import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('Coffee', () {
    test('init and properties', () {
      final bean = const Bean(
        roaster: 'Patriot Coffee Roaster',
        name: 'Ethiopia Nano Challa',
        roast: Roast.lightMedium,
        countries: [Country.ET],
        altitude: Altitude(lower: 1900, upper: 2200),
        process: Process.washed,
        notes: ['Red Grape', 'Pineapple', 'Elderflower'],
      );

      final method = const BrewMethod(
        title: "James Hoffman's Ultimate V60",
        type: BrewType.pourOver,
        steps: [
          'Rinse filter & pre-heat V60',
          'Pour in grounds, create well in the middle.',
          'Pre-wet with (~2x weight of grounds) water.',
          '...',
        ],
      );

      final recipe = BrewRecipe(
        bean: bean,
        grindSize: 4,
        beanWeight: 30.1,
        waterWeight: 504,
        method: method,
      );

      final coffee = Coffee(
        notes: 'It was good as always!',
        recipe: recipe,
      );

      expect(coffee.props, [recipe, 'It was good as always!']);
    });
  });
}
