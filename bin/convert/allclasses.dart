import 'dart:convert';
import 'dart:io';

void main() {
  // JSON
  Map<String, dynamic> jsonObject = {
    'name': 'John Doe',
    'age': 30,
    'isStudent': true,
    'grades': [90, 85, 92],
  };
  String jsonString = json.encode(jsonObject);
  print('JSON Encoded: $jsonString');

  Map<String, dynamic> decodedJson = json.decode(jsonString);
  print('JSON Decoded: $decodedJson');

  // UTF-8
  String utf8String = 'Îñţérñåţîöñåļîžåţîờñ';
  List<int> encodedUtf8 = utf8.encode(utf8String);
  print('UTF-8 Encoded: $encodedUtf8');

  String decodedUtf8 = utf8.decode(encodedUtf8);
  print('UTF-8 Decoded: $decodedUtf8');

  // ASCII
  String asciiString = 'This is ASCII!';
  List<int> encodedAscii = ascii.encode(asciiString);
  print('ASCII Encoded: $encodedAscii');

  String decodedAscii = ascii.decode(encodedAscii);
  print('ASCII Decoded: $decodedAscii');

  // Latin-1
  String latin1String = 'blåbærgrød';
  List<int> encodedLatin1 = latin1.encode(latin1String);
  print('Latin-1 Encoded: $encodedLatin1');

  String decodedLatin1 = latin1.decode(encodedLatin1);
  print('Latin-1 Decoded: $decodedLatin1');

  // Base64
  List<int> bytesToEncode = [0x62, 0x6c, 0xc3, 0xa5, 0x62, 0xc3, 0xa6, 0x72, 0x67, 0x72, 0xc3, 0xb8, 0x64];
  String base64Encoded = base64.encode(bytesToEncode);
  print('Base64 Encoded: $base64Encoded');

  List<int> decodedBase64 = base64.decode('YmzDpWLDpnJncsO4ZAo=');
  print('Base64 Decoded: $decodedBase64');

  // HTML Escape
  String unescapedHtml = 'Text & subject <b>bold</b>';
  String escapedHtml = htmlEscape.convert(unescapedHtml);
  print('HTML Escaped: $escapedHtml');

  // Converters
  const showLineNumbers = true;
  var lineNumber = 1;
  var stream = Stream<List<int>>.fromIterable([
    [0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x6C, 0x69, 0x6E, 0x65, 0x20, 0x31],
    [0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x6C, 0x69, 0x6E, 0x65, 0x20, 0x32],
    [0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x6C, 0x69, 0x6E, 0x65, 0x20, 0x33],
  ]);
  stream
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .forEach((line) {
    if (showLineNumbers) {
      stdout.write('${lineNumber++} ');
    }
    stdout.writeln(line);
  });
}


// OUTPUT:
// JSON Encoded: {"name":"John Doe","age":30,"isStudent":true,"grades":[90,85,92]}
// JSON Decoded: {name: John Doe, age: 30, isStudent: true, grades: [90, 85, 92]}
// UTF-8 Encoded: [195, 142, 195, 177, 197, 163, 195, 169, 114, 195, 177, 195, 165, 197, 163, 195, 174, 195, 182, 195, 177, 195, 165, 196, 188, 195, 174, 197, 190, 195, 165, 197, 163, 195, 174, 225, 187, 157, 195, 177]
// UTF-8 Decoded: Îñţérñåţîöñåļîžåţîờñ
// ASCII Encoded: [84, 104, 105, 115, 32, 105, 115, 32, 65, 83, 67, 73, 73, 33]
// ASCII Decoded: This is ASCII!
// Latin-1 Encoded: [98, 108, 229, 98, 230, 114, 103, 114, 248, 100]
// Latin-1 Decoded: blåbærgrød
// Base64 Encoded: YmzDpWLDpnJncsO4ZA==
// Base64 Decoded: [98, 108, 195, 165, 98, 195, 166, 114, 103, 114, 195, 184, 100, 10]
// HTML Escaped: Text &amp; subject &lt;b&gt;bold&lt;&#47;b&gt;
// 1 This is line 1This is line 2This is line 3