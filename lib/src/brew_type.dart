/// Brew type are used to
enum BrewType {
  /// Pressure actuated valve method for your AeroPress methods
  prismo,

  /// Cupping-style coffee.
  cupping,

  /// The manual coffee press. More information at [AeroPress](https://aeropress.com/).
  aeroPress,

  /// Method of pouring hot water onto ground coffee beans
  /// via manually.
  pourOver,

  /// Method of pouring hot water onto ground coffee beans
  /// via an electric machine.
  drip,

  /// The process of steep non-hot water in grounds.
  coldBrew,

  /// The pressurized coffee processed of pushing hot water
  /// throught a "puck" of coffee.
  espresso
}
