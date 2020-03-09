A library builder for generating `copyWith` extension for classes.

## Installation

Install `build_runner` and `copy_with_code_gen` as dev_dependencies:

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

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/krgutierrez/copy_with_code_gen/issues).

[tracker]: https://github.com/krgutierrez/copy_with_code_gen/issues