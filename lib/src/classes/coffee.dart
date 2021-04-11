import 'package:equatable/equatable.dart';
import 'brew_recipe.dart';

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
