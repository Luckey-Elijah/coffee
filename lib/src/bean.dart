import 'package:equatable/equatable.dart';
import 'altitude.dart';
import 'bean_process.dart';
import 'continent.dart';
import 'country.dart';
import 'plant_type.dart';
import 'roast.dart';

/// {@template bean}
/// The bean carries all the attributes of the bean from it's roast
/// to it's origin.
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
