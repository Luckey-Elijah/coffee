/// Roast level used to track beans. Can be on of the following
/// in order of "roastness":
/// - `veryLight`
/// - `light`
/// - `lightMedium`
/// - `medium`
/// - `darkMedium`
/// - `dark`
/// - `veryDark`
enum Roast {
  /// a _very light_ roast
  veryLight,

  /// a _light_ roast
  light,

  /// a _light-medium_ roast
  lightMedium,

  /// a _medium_ roast
  medium,

  /// a _dark-medium_ roast
  darkMedium,

  /// a _dark_ roast
  dark,

  /// a very-dark roast
  veryDark,
}
