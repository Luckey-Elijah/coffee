import 'package:equatable/equatable.dart';
import 'bean.dart';
import 'brew_method.dart';

/// {@template brew_recipe}
/// The details and parts of brewing coffee.
///
/// {@endtemplate}
class BrewRecipe extends Equatable {
  /// {@macro brew_recipe}
  const BrewRecipe({
    required this.bean,
    required this.grindSize,
    required this.beanWeight,
    required this.waterWeight,
    required this.method,
  });

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
