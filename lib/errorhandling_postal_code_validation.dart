/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_postal_code_validation_base.dart';

/*
Practice Question 2: Postal Code Validation

Task:

Create a custom exception named InvalidPostalCode.

Validate that a postal code is exactly five digits. If it isn’t, throw the InvalidPostalCode exception.
 */

void validatePostalCode(String postalCode){
  if (!RegExp(r'^\d{5}$').hasMatch(postalCode)) {
    throw InvalidPostalCode("The postal code is invalid! Please check again.");
  }
}

class InvalidPostalCode implements Exception {
  InvalidPostalCode(this.message);
  String message;
}

void main(){
  print(RegExp(r'^\d{5}$').hasMatch('12421')); //^[0-9]+$
}
