# ☕️ Coffee

A coffee-related library for an object-oriented representation of coffee.

[![pub package](https://img.shields.io/pub/v/coffee.svg)](https://pub.dev/packages/coffee) [![pub points](https://badges.bar/coffee/pub%20points)](https://pub.dev/packages/coffee/score) [![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis) [![Dart Validation](https://github.com/Luckey-Elijah/coffee/actions/workflows/dart.yml/badge.svg)](https://github.com/Luckey-Elijah/coffee/actions/workflows/dart.yml)

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

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Luckey-Elijah/coffee/issues
