A library builder for generating `copyWith` extension for classes. 

This library will generate a dart file that will add an `extension` on classes with `@copyWith` annotation.
The purpose of this library is to reduce boilerplate and time on for creating `copyWith` functions.   

## Installation

Set the Dart SDK version to `'>=2.7.0 <3.0.0'`
```yaml
environment:
  sdk: '>=2.7.0 <3.0.0'
```

Add `build_runner` and `copy_with_code_gen` as dev_dependencies:

```yaml
dev_dependencies:
  build_runner: {{version}}
  copy_with_code_gen: 0.0.1
```

## Usage

```dart
// Import code_with_code_gen library
import 'package:copy_with_code_gen/copy_with_code_gen.dart';

// Add part '{{file_name}}.g.dart'
part '{{file_name}}.g.dart';

// Add copyWith annotation in your class.
@copyWith
class User {
  final String firstName;
  final String lastName;
  
  User({ this.firstName, this.lastName, });

}
```

After adding the `part '{{file_name}}.g.dart'` and `@copyWith annotation, run:

`pub run build_runner build` or `flutter pub run build_runner build` (if you are using Flutter)

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/krgutierrez/copy_with_code_gen/issues).

[tracker]: https://github.com/krgutierrez/copy_with_code_gen/issues