import 'package:copy_with_code_gen/copy_with_code_gen.dart';

part 'test_product.g.dart';

@copyWith
class TestProduct {

  final String id;
  final String name;
  final double price;

  TestProduct({ this.id, this.name, this.price });

}