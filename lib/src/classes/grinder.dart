import 'package:equatable/equatable.dart';
part '../enums/grinder_type.dart';
part 'grinder_range.dart';

/// {@template grinder}
/// The tool used for grinding coffee beans.
/// {@endtemplate}
class Grinder extends Equatable {
  /// {@macro grinder}
  const Grinder({
    required this.make,
    required this.model,
    this.stepped,
    this.type,
    this.range,
  });

  /// The "brand" or company that makes this grinder.
  final String make;

  /// The name of the grinder.
  final String model;

  /// A stepped grinder refers to how the adjustments of grind sizes are made.
  /// Typically, only burr grinders have this option.
  final bool? stepped;

  /// The grinder type: a burr or blade grinder.
  final GrinderType? type;

  /// The range of the grinder adjustment size.
  final GrinderRange? range;

  @override
  List<Object?> get props => [
        make,
        model,
        stepped,
        type,
        range,
      ];
}
