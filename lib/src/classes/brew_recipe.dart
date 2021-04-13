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
class BrewRecipe extends Equatable {
  /// {@macro brew_recipe}
  BrewRecipe({
    required this.bean,
    this.grindSize,
    required this.beanWeight,
    required this.waterWeight,
    this.method,
    this.grinder,
  })  : assert(grindSize! > grinder!.range!.lower),
        assert(grindSize! < grinder!.range!.upper),
        assert(beanWeight > 0 && waterWeight > 0);

  /// The bean this recipe is using.
  final Bean bean;

  /// The grind size this recipe is using.
  /// Make sure your grindsize is in theh range of grinder's GrinderRange
  /// if the range is not null.
  final num? grindSize;

  /// The bean's weight for this recipe.
  final double beanWeight;

  /// The water's weight for this recipe.
  final double waterWeight;

  /// The brew method of this coffee.
  final BrewMethod? method;

  /// Grinder used for this recipe.
  final Grinder? grinder;

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
