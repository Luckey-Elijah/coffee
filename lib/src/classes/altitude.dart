import 'package:equatable/equatable.dart';
import '../enums/altitude_unit.dart';

/// {@template altitude}
/// Altitude is classified by the range the coffee plant was grown at.
///
/// Example:
///
/// If coffee origin's altitude is 3,500 - 3,700 ft
/// create an Altitude like:
/// ```dart
/// var altitude = const Altitude(
///   lower: 3500,
///   upper: 3700,
///   unit: AltitudeUnit.feet,
/// );
/// ```
/// {@endtemplate}
class Altitude extends Equatable {
  /// {@macro altitude}
  const Altitude({
    required this.lower,
    required this.upper,
    this.unit = AltitudeUnit.meters,
  });

  /// The lower range of the coffee altitude.
  /// Would be the first value in a given range.
  final int lower;

  /// The upper range of the coffee altitude.
  /// Would be the second value in a given range.
  final int upper;

  /// How this altitudes height/units are being stored.
  final AltitudeUnit unit;

  /// Two-length list to get the [upper] and [lower] range of
  /// the altitude in default units, respectively.
  List<int> get range => [lower, upper];

  /// Two-length list to get the [upper] and [lower] range of
  /// the altitude in feet.
  List<int> get rangeInFeet => unit == AltitudeUnit.feet
      ? range // if already in "correct units", return range
      : [_metersToFeet(lower), _metersToFeet(upper)];

  /// Two-length list to get the [upper] and [lower] range of
  /// the altitude in meters.
  List<int> get rangeInMeters => unit == AltitudeUnit.meters
      ? range // if already in "correct units", return range
      : [_feetToMeters(lower), _feetToMeters(upper)];

  static int _feetToMeters(int feet) => (feet * 0.3048).round();

  static int _metersToFeet(int meter) => (meter * 3.28084).round();

  @override
  List<Object?> get props => [lower, upper, unit];
}
