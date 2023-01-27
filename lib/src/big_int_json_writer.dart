import 'package:jsontool/jsontool.dart';

class BigIntJsonWriter
    extends JsonSinkProcessor<JsonReader<Object?>, JsonWriter<String>> {
  BigIntJsonWriter(StringSink sink, String? indent)
      : super(jsonStringWriter(sink, indent: indent));

  @override
  void processUnknown(JsonReader<Object?> reader, String? key) {
    // The source of a JsonReader<Object?> is the unknown object.
    var value = reader.expectAnyValueSource();
    if (value is BigInt) {
      if (key != null) sink.addKey(key);
      sink.addSourceValue(value.toString());
    } else {
      throw FormatException("Unexpected value", value);
    }
  }
}
