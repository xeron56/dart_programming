// import 'dart:async';
// import 'dart:convert';

// void main() {
//   // Create an instance of JsonDecoder
//   const JsonDecoder decoder = JsonDecoder();

//   // Example 1: Using convert() method
//   const String jsonString = '''
//     {
//       "data": [{"text": "foo", "value": 1 },
//                {"text": "bar", "value": 2 }],
//       "text": "Dart"
//     }
//   ''';

//   final Map<String, dynamic> object = decoder.convert(jsonString);

//   final item = object['data'][0];
//   print(item['text']); // foo
//   print(item['value']); // 1

//   print(object['text']); // Dart

//   // Example 2: Using bind() and startChunkedConversion() methods
//    Stream<String> jsonChunks = Stream.fromIterable([
//     '{"data": [',
//     '{"text": "chunk1", "value": 10},',
//     '{"text": "chunk2", "value": 20}',
//     ']}',
//   ]);

//   final jsonStreamTransformer = decoder.bind(jsonChunks);

//   final objectSink = jsonStreamTransformer.listen((event) {
//     print('Decoded object: $event');
//   });

//   // Example 3: Using startChunkedConversion() method with a custom reviver
//   const String jsonStringWithReviver = '''
//     {
//       "data": [
//         {"text": "foo", "value": 1, "createdAt": "2023-04-28T12:34:56.789Z"},
//         {"text": "bar", "value": 2, "createdAt": "2023-04-29T09:10:11.012Z"}
//       ]
//     }
//   ''';

//   final StringConversionSink chunkedSink = decoder.startChunkedConversion((key, value) {
//     if (key == 'createdAt') {
//       // Custom reviver function to parse DateTime objects
//       return DateTime.parse(value.toString());
//     }
//     return value;
//   });

//   chunkedSink
//     ..add(jsonStringWithReviver)
//     ..close()
//     ..then((decodedObject) {
//       final data = decodedObject['data'] as List<dynamic>;
//       print('Decoded object with reviver:');
//       for (final item in data) {
//         print('Text: ${item['text']}, Value: ${item['value']}, Created At: ${item['createdAt']}');
//       }
//     });
// }