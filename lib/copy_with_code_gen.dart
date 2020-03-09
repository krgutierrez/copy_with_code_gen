library copy_with_code_gen;

import 'package:build/build.dart';
import 'package:copy_with_code_gen/src/copy_with_builder.dart';
import 'package:source_gen/source_gen.dart';

export 'src/copy_with.dart';

Builder copyWithBuilder(BuilderOptions options) => SharedPartBuilder([CopyWithBuilder()], 'copy_with');