# ☕️ Coffee

A coffee-related library for an object-oriented representation of coffee.

[![][pub_svg]][pub_url] [![pub points][pub_score_svg]][pub_score_url] [![style: very good analysis][very_good_analysis_svg]][very_good_analysis_url] [![Dart Validation][dart_validation_svg]][dart_validation_url]

## Usage

A simple usage example:

```dart
import 'package:coffee/coffee.dart';

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
    '...',
  ],
);

var myGoToRecipe = BrewRecipe(
  bean: myFavoriteBean,
  grindSize: 4,
  beanWeight: 30.1,
  waterWeight: 504,
  method: hoffmansV60,
);

var todaysCoffee = Coffee(
  notes: 'It was good as always!',
  recipe: myGoToRecipe,
);
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker_url].

[tracker_url]: https://github.com/Luckey-Elijah/coffee/issues
[pub_url]: https://pub.dev/packages/coffee
[pub_svg]: https://img.shields.io/pub/v/coffee.svg
[pub_score_url]: https://pub.dev/packages/coffee/score
[pub_score_svg]: https://badges.bar/coffee/pub%20points
[very_good_analysis_url]: https://pub.dev/packages/very_good_analysis
[very_good_analysis_svg]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[dart_validation_url]: https://github.com/Luckey-Elijah/coffee/actions/workflows/dart.yml
[dart_validation_svg]: https://github.com/Luckey-Elijah/coffee/actions/workflows/dart.yml/badge.svg
