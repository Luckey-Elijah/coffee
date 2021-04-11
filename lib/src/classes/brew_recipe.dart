import 'package:equatable/equatable.dart';
import 'bean.dart';
import 'brew_method.dart';

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
  const BrewRecipe({
    required this.bean,
    this.grindSize,
    required this.beanWeight,
    required this.waterWeight,
    this.method,
  }) : assert(beanWeight > 0 && waterWeight > 0);

  /// The bean this recipe is using.
  final Bean bean;

  /// The grind size this recipe is using.
  /// Can be `null` if pre-ground beans are use.
  final int? grindSize;

  /// The bean's weight for this recipe.
  final double beanWeight;

  /// The water's weight for this recipe.
  final double waterWeight;

  /// The brew method of this coffee, such as po
  final BrewMethod? method;

  /// A the bean-to-water reatio for the recipe.
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
