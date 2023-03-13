import 'dart:convert';

import 'package:algorand_dart/algorand_dart.dart';
import 'package:algorand_json/algorand_json.dart';

void main() async {
  final algorand = Algorand(
    options: AlgorandOptions(
      mainnet: true,
      transformer: BigIntJsonTransformer(
        keys: ['uint', 'amount'],
      ),
    ),
  );

  final txn = await algorand.indexer().getTransactionById(
      'YLJH7NBKH4W6DLKO6LJTIWGC5Q52SQZ3VSMG2YKEFLBJCSUGEIIQ');


  final source = jsonEncode(txn.toJson());
  final txn2 = BigIntJsonTransformer.decode(source);
  print(txn2);

  final delta = txn.transaction.localStateDelta.first.delta;
  final pair =
      delta.where((e) => e.key == 'ZXhwaXJhdGlvbl9kYXRl').toList().first;
  final actualValue = pair.value.uint!;
  final expectedValue = BigInt.two.pow(64) - BigInt.one;
  print(expectedValue); // prints 18446744073709551615
  print(actualValue); // prints 18446744073709551616
  assert(expectedValue == actualValue); // fails
}
