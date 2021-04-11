import 'package:equatable/equatable.dart';
import '../enums/brew_type.dart';

/// {@template brew_method}
/// The brew method model. Includes a [title] and a list of [steps].
///
/// Example:
/// ```dart
/// var someBrewMethod = BrewMethod(
///   title: 'James Hoffman V60',
///   type: BrewType.pourOver,
///   steps: [
///    'Rinse paper in V60 and pre heat it',
///    'Pour in grams coffee, make a well with your finger in the coffee bed',
///    ...
///  ],
/// );
/// ```
/// {@endtemplate}
class BrewMethod extends Equatable {
  /// {@macro brew_method}
  const BrewMethod({
    required this.title,
    required this.type,
    required this.steps,
  });

  /// The name of this brew.
  final String title;

  /// The type of this brew method. For example: pour over, espresso, etc.
  final BrewType type;

  /// The steps of this brew. Don't prepend the steps with numbers,
  /// prefer to use the order of the list.
  final List<String> steps;

  @override
  List<Object?> get props => [title, type, ...steps];
}
