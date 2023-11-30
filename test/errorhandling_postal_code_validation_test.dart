import 'package:errorhandling_postal_code_validation/errorhandling_postal_code_validation.dart';
import 'package:test/test.dart';

void main() {
  group('Postal Code Validation Tests', () {
    test('Valid postal code', () {
      expect(() => validatePostalCode('12345'), returnsNormally);
    });

    test('Invalid postal code throws InvalidPostalCode', () {
      expect(
          () => validatePostalCode('1234'), throwsA(isA<InvalidPostalCode>()));
    });

    test('Invalid postal code format throws InvalidPostalCode', () {
      expect(
          () => validatePostalCode('abcde'), throwsA(isA<InvalidPostalCode>()));
    });
  });
}
