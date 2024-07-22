//Correct use of error handling, create own errors
import 'dart:async';

import '01_basic_error_handling.dart';

void main() {
  try {
    crash(2);
  } catch(err, stackTrace) {
    logError(err, stackTrace);
  }
}

void crash(int crashType) {
  switch(crashType) {
    case 0:
      throw TimeoutException('Too much time');
    case 1:
      throw UnimplementedError('Not implemented');
    case 2:
      throw MyOwnException();
  }
}


class MyOwnException extends Error {

}