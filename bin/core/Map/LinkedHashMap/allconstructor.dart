import 'dart:collection';

void main() {
  // Constructor: LinkedHashMap()
  var linkedHashMap1 = LinkedHashMap();
  linkedHashMap1[1] = 'One';
  linkedHashMap1[2] = 'Two';
  linkedHashMap1[3] = 'Three';
  print('LinkedHashMap 1: $linkedHashMap1');

  // Constructor: LinkedHashMap.from(Map other)
  var map = {4: 'Four', 5: 'Five', 6: 'Six'};
  var linkedHashMap2 = LinkedHashMap.from(map);
  print('LinkedHashMap 2: $linkedHashMap2');

  // Constructor: LinkedHashMap.fromEntries(Iterable<MapEntry<K, V>> entries)
  var entries = [MapEntry(7, 'Seven'), MapEntry(8, 'Eight'), MapEntry(9, 'Nine')];
  var linkedHashMap3 = LinkedHashMap.fromEntries(entries);
  print('LinkedHashMap 3: $linkedHashMap3');

  // Constructor: LinkedHashMap.fromIterable(Iterable iterable, {K key(dynamic element)?, V value(dynamic element)?})
  var iterable = ['Ten', 'Eleven', 'Twelve'];
  var linkedHashMap4 = LinkedHashMap.fromIterable(iterable, key: (element) => iterable.indexOf(element) + 10);
  print('LinkedHashMap 4: $linkedHashMap4');

  // Constructor: LinkedHashMap.fromIterables(Iterable<K> keys, Iterable<V> values)
  var keys = [13, 14, 15];
  var values = ['Thirteen', 'Fourteen', 'Fifteen'];
  var linkedHashMap5 = LinkedHashMap.fromIterables(keys, values);
  print('LinkedHashMap 5: $linkedHashMap5');

  // Constructor: LinkedHashMap.identity()
  var linkedHashMap6 = LinkedHashMap.identity();
  linkedHashMap6[16] = 'Sixteen';
  linkedHashMap6[17] = 'Seventeen';
  linkedHashMap6[18] = 'Eighteen';
  print('LinkedHashMap 6: $linkedHashMap6');

  // Constructor: LinkedHashMap.of(Map<K, V> other)
  var linkedHashMap7 = LinkedHashMap.of({19: 'Nineteen', 20: 'Twenty', 21: 'Twenty-One'});
  print('LinkedHashMap 7: $linkedHashMap7');
}
