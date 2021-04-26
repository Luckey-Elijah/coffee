import 'package:equatable/equatable.dart';
import 'bean.dart';
import 'brew_method.dart';
import 'grinder.dart';

/// {@template brew_recipe}
/// The details and parts of brewing coffee.
///
/// Example:
/// ```dart
/// var recipe = BrewRecipe(
///   bean: Bean(
///     roast: Roast.light,
///     roaster: 'My Favorite Local Roaster',
///     name: 'Market Blend',
///   ),
///   beanWeight: 30.1,
///   waterWeight: 504,
/// );
/// var ratio = recipe.ratio // about 16.7
/// ```
/// {@endtemplate}
class BrewRecipe with EquatableMixin {
  /// {@macro brew_recipe}
  BrewRecipe({
    required this.bean,
    required this.beanWeight,
    required this.waterWeight,
    this.method,
    double? grindSize,
    Grinder? grinder,
  }) : assert(beanWeight > 0 && waterWeight > 0) {
    // When give BOTH grindsize and grinder:
    if (grindSize != null && grinder?.range != null) {
      assert(grinder!.range!.isInRange(grindSize));
    }
    _grinder = grinder;
    _grindSize = grindSize;
  }

  /// The bean this recipe is using.
  final Bean bean;

  /// {@template grind_size}
  /// The grind size this recipe is using.
  /// {@endtemplate}
  /// Make sure your grindsize is in theh range of grinder's GrinderRange
  /// if the range is not null.
  double? _grindSize;

  /// {@macro grind_size}
  double? get grindSize => _grindSize;

  /// The bean's weight for this recipe.
  final double beanWeight;

  /// The water's weight for this recipe.
  final double waterWeight;

  /// The brew method of this coffee.
  final BrewMethod? method;

  /// {@template grinder_member}
  /// Grinder used for this recipe.
  /// {@endtemplate}
  Grinder? _grinder;

  /// {@macro grinder_member}
  Grinder? get grinder => _grinder;

  /// A the bean-to-water ratio for this recipe.
  double get ratio => (waterWeight / beanWeight);

  @override
  List<Object?> get props => [
        bean,
        grindSize,
        ratio,
        beanWeight,
        waterWeight,
        method,
      ];
}
