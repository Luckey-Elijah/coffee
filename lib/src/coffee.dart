import 'package:equatable/equatable.dart';
import 'brew_recipe.dart';

/// Brewing coffee is just the process of following a [BrewRecipe]
/// and creating [Coffee].
typedef BrewCoffee = Coffee Function(BrewRecipe);

/// {@template coffee}
/// Coffee is created by following a brew recipe.
/// {@endtemplate}
class Coffee extends Equatable {
  /// {@macro coffee}
  const Coffee({
    this.recipe,
    this.notes,
  });

  /// The recipe used to brew this coffee.
  final BrewRecipe? recipe;

  /// Any notes/remarks that can be given on the coffee.
  final String? notes;

  @override
  List<Object?> get props => [recipe, notes];
}
