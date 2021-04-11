/// The process of the pit from the cherry
enum Process {
  /// The [natural] process of the pit from the cherry.
  natural,

  /// The [fullyWashed] process of the pit from the cherry.
  fullyWashed,

  /// The [partiallyWashed] process of the pit from the cherry.
  partiallyWashed,

  /// The [washed] process of the pit from the cherry.
  /// If known prefer to use [partiallyWashed] or [fullyWashed].
  washed,

  /// The [honeyProcessed] process of the pit from the cherry.
  honeyProcessed,
}
