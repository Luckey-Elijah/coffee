import 'package:coffee/coffee.dart';

void main() {
  var myFavoriteBean = const Bean(
    roaster: 'Patriot Coffee Roaster',
    name: 'Ethiopia Nano Challa',
    roast: Roast.lightMedium,
    countries: [Country.ET],
    altitude: Altitude(lower: 1900, upper: 2200),
    process: Process.washed,
    notes: ['Red Grape', 'Pineapple', 'Elderflower'],
  );

  var hoffmansV60 = const BrewMethod(
    title: "James Hoffman's Ultimate V60",
    type: BrewType.pourOver,
    steps: [
      'Rinse filter & pre-heat V60',
      'Pour in grounds, create well in the middle.',
      'Pre-wet with (~2x weight of grounds) water.',
      'Swirl brewer until the slurry is even.',
      'At 45s, complete the first main pour till 2/3 weight in the next 30s.',
      'At 1:15, complete second main pour till 100% weight in the next 30s.',
      'Stir gently clockwise and anticlockwise to kick grounds from the sides',
      'Gently swirl brewer to flatten coffee bed for even extraction',
      'Aim to finish drawdown by 3min 30s.',
    ],
  );

  var myGoToRecipe = BrewRecipe(
    bean: myFavoriteBean,
    grindSize: 4,
    beanWeight: 30.1,
    waterWeight: 504,
    method: hoffmansV60,
  );

  var ratio = myGoToRecipe.ratio.toStringAsFixed(1); // about 16.74

  var notes =
      'Was delicious as always! It seems the 1:$ratio ratio has been working for ${myGoToRecipe.bean.name}.';

  var todaysCoffee = Coffee(
    notes: notes,
    recipe: myGoToRecipe,
  );

  print(todaysCoffee.notes);
  // Prints:
  // It seems the 1:16.7 ratio has been working for Ethiopia Nano Challa.
  // Was delicious as always!
}
