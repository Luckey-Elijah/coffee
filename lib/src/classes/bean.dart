import 'package:equatable/equatable.dart';

import '../enums/continent.dart';
import '../enums/country.dart';
import '../enums/plant_type.dart';
import '../enums/process.dart';
import '../enums/roast.dart';
import 'altitude.dart';

/// {@template bean}
/// The bean carries all the attributes of the bean from it's roast
/// to it's origin.
///
/// Example:
/// ```dart
/// var myFavoriteBean = const Bean(
///   roaster: 'Patriot Coffee Roaster',
///   name: 'Ethiopia Nano Challa',
///   roast: Roast.lightMedium,
///   countries: [Country.ET],
///   altitude: Altitude(lower: 1900, upper: 2200),
///   process: Process.washed,
///   notes: ['Red Grape', 'Pineapple', 'Elderflower'],
/// );
/// ```
/// {@endtemplate}
class Bean extends Equatable {
  /// {@macro bean}
  const Bean({
    required this.roaster,
    required this.name,
    required this.roast,
    this.type = PlantType.arabica,
    this.continent,
    this.countries,
    this.altitude,
    this.process,
    this.notes,
  });

  /// Name of the roaster.
  final String roaster;

  /// Name of the roast.
  final String name;

  /// Darkness/lightness of the bean's roast.
  final Roast roast;

  /// Plant type be either arabica or robusta.
  /// Defaults to arabica.
  final PlantType type;

  /// Continent origin of bean.
  final Continent? continent;

  /// Country origin of beans.
  final List<Country>? countries;

  /// Altitude the bean was grown.
  final Altitude? altitude;

  /// How the cherries were processed.
  final Process? process;

  /// The tasting notes.
  final List<String>? notes;

  @override
  List<Object?> get props => [
        roaster,
        name,
        roast,
        type,
        continent,
        countries,
        altitude,
        process,
        notes,
      ];
}
