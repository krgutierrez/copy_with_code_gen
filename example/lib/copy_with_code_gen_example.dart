library copy_with_code_gen_example;

import './test_product.dart';

void main() {
 final productOne = TestProduct(id: 'product-001', name: 'Macbook', price: 650.00);
 final productTwo = productOne.copyWith(id: 'product-002', name: 'Macbook', price: 850.00);
 // We should expect that the IDs are not the same
 print('Expect false: ${productOne.id == productTwo.id}');
 // We should expect that the names should be the same
 print('Expect true: ${productOne.name == productTwo.name}');
 // We should expect that the prices are not the same
 print('Expect false: ${productOne.price == productTwo.price}');
}
