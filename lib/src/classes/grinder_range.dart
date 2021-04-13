part of 'grinder.dart';

/// {@template grinder_range}
/// The range of grind size for your grinder.
/// {@endtemplate}
class GrinderRange extends Equatable {
  /// {@macro grinder_range}
  const GrinderRange(this.lower, this.upper)
      : assert(lower < upper),
        assert(!(lower < -0.0)),
        assert(!(upper < -0.0));

  /// The lower range of the grinder.
  final num lower;

  /// The upper range of the grinder.
  final num upper;

  @override
  List<Object?> get props => [lower, upper];
}
