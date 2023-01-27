import 'package:jsontool/jsontool.dart';

class BigIntJsonReader
    extends JsonSinkProcessor<JsonReader<StringSlice>, JsonWriter<Object?>> {
  final List<String> keys;

  BigIntJsonReader(this.keys, void Function(Object?) resultCallback)
      : super(jsonObjectWriter(resultCallback));

  @override
  void processNum(JsonReader<StringSlice> reader, String? key) {
    if (key != null) sink.addKey(key);
    var copy = reader.copy();
    var source = reader.expectAnyValueSource().toString();
    assert(source.isNotEmpty);
    var result = BigInt.tryParse(source);
    if (result != null && keys.contains(key)) {
      sink.addSourceValue(result);
      return;
    }

    var intResult = int.tryParse(source);
    if (intResult != null) {
      sink.addNumber(copy.expectInt());
      return;
    }

    sink.addNumber(copy.expectDouble());
  }

  bool isInteger(num value) => value is int || value == value.roundToDouble();
}
