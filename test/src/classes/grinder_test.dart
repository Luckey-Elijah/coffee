import 'package:coffee/coffee.dart';
import 'package:test/test.dart';

void main() {
  group('Grinder', () {
    test('init and properties', () {
      final grinder = const Grinder(
        make: 'Fellow',
        model: 'Ode',
        range: GrinderRange(1, 11),
        stepped: true,
        type: GrinderType.burr,
      );

      expect(
        grinder.props,
        const ['Fellow', 'Ode', true, GrinderType.burr, GrinderRange(1, 11)],
      );
    });
  });
  group('GrinderRange', () {
    test('init and properties', () {
      final range = const GrinderRange(1, 12);
      expect(range.props, [1, 12]);
    });
    test('throw assertion error', () {
      expect(
        () => GrinderRange(3, 2),
        throwsA(isA<AssertionError>()),
      );
      expect(
        () => GrinderRange(-3, -2),
        throwsA(isA<AssertionError>()),
      );

      expect(
        () => GrinderRange(-0.1, 0.1),
        throwsA(isA<AssertionError>()),
      );
      expect(
        const GrinderRange(-0.0, 0.1),
        const GrinderRange(-0.0, 0.1),
      );
    });
  });
}
