import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:copy_with_code_gen/src/copy_with.dart';
import 'package:source_gen/source_gen.dart';

class CopyWithBuilder extends GeneratorForAnnotation<CopyWith> {

  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element.kind != ElementKind.CLASS) {
      throw InvalidGenerationSourceError('Annotation "copyWith" can only be use in class');
    }
    final object = element as ClassElement;
    final name = object.name;
    final fields = object.fields;
    String functionParameters;
    String initializationParameters;
    // If there is no fields, then we don't need  to call the two functions.
    if (fields.isNotEmpty) {
      functionParameters = _generateFunctionParameters(fields);
      initializationParameters = _generateInitializationParameters(fields);
    }
    return (''
        'extension ${name}CopyWith on $name {'
          '$name copyWith($functionParameters) {'
            'return $name($initializationParameters);'
          '}'
        '}'
        '');
  }

  /// Generate the String for function copyWith's parameters
  String _generateFunctionParameters(List<FieldElement> fields) {
    if (fields.isEmpty) {
      return '';
    }
    final stringBuffer = StringBuffer();
    fields.forEach((field) {
      stringBuffer.write('${field.type} ${field.name},');
    });
    return '{ ${stringBuffer.toString()} }';
  }

  /// Generate the String for parameters in the Object's initialization
  String _generateInitializationParameters(List<FieldElement> fields) {
    final stringBuffer = StringBuffer();
    fields.forEach((field) {
      final name = field.name;
      stringBuffer.write('$name: $name ?? this.$name, ');
    });
    return stringBuffer.toString();
  }

}
