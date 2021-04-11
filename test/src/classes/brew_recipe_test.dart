import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('BrewRecipe', () {
    test('init and properties', () {
      const _steps = [
        'Rinse paper in V60 and pre heat it',
        'Pour in grams coffee, make a well with your finger in the coffee bed',
        '...',
      ];

      final _method = const BrewMethod(
        title: 'James Hoffman V60',
        type: BrewType.pourOver,
        steps: _steps,
      );

      final _bean = const Bean(
        roaster: 'Patriot',
        name: 'Market Blend',
        roast: Roast.medium,
      );

      final recipe = BrewRecipe(
        bean: _bean,
        grindSize: 3,
        method: _method,
        beanWeight: 30.0,
        waterWeight: 500.0,
      );

      expect(recipe.props, [
        const Bean(
          roaster: 'Patriot',
          name: 'Market Blend',
          roast: Roast.medium,
        ),
        3,
        500 / 30,
        30.0,
        500.0,
        const BrewMethod(
          title: 'James Hoffman V60',
          type: BrewType.pourOver,
          steps: [
            'Rinse paper in V60 and pre heat it',
            // ignore: lines_longer_than_80_chars
            'Pour in grams coffee, make a well with your finger in the coffee bed',
            '...',
          ],
        )
      ]);
    });

    test('get ratio', () {
      final recipe = const BrewRecipe(
          bean: Bean(
            roaster: 'roaster',
            name: 'name',
            roast: Roast.light,
          ),
          beanWeight: 30,
          waterWeight: 500);

      expect(recipe.ratio, 500 / 30);
    });
  });
}
