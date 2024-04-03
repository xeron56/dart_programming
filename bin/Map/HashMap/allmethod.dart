import 'dart:collection';

void main() {
  // 1. Using default constructor
  final Map<int, String> planetsDefault = HashMap();
  planetsDefault[1] = 'Mercury';
  planetsDefault[2] = 'Venus';
  print('Planets (default constructor): $planetsDefault');

  // 2. Using HashMap.from()
  final Map<int, String> otherMap = {3: 'Earth', 4: 'Mars'};
  final Map<int, String> planetsFrom = HashMap.from(otherMap);
  print('Planets (from): $planetsFrom');

  // 3. Using HashMap.fromEntries()
  final List<MapEntry<int, String>> entriesList = [MapEntry(5, 'Jupiter'), MapEntry(6, 'Saturn')];
  final Map<int, String> planetsFromEntries = HashMap.fromEntries(entriesList);
  print('Planets (fromEntries): $planetsFromEntries');

  // 4. Using HashMap.fromIterable()
  final List<String> planetsList = ['Uranus', 'Neptune'];
  final Map<int, String> planetsFromIterable = HashMap.fromIterable(
    planetsList,
    key: (planet) => planetsList.indexOf(planet) + 7,
    value: (planet) => planet,
  );
  print('Planets (fromIterable): $planetsFromIterable');

  // 5. Using HashMap.fromIterables()
  final List<int> keysList = [8, 9];
  final List<String> valuesList = ['Pluto', 'Haumea'];
  final Map<int, String> planetsFromIterables = HashMap.fromIterables(keysList, valuesList);
  print('Planets (fromIterables): $planetsFromIterables');

  // 6. Using identity constructor
  final Map<int, String> planetsIdentity = HashMap.identity();
  planetsIdentity[10] = 'Makemake';
  print('Planets (identity): $planetsIdentity');

  // 7. Using HashMap.of()
  final Map<int, String> planetsOf = HashMap.of(planetsDefault);
  print('Planets (of): $planetsOf');
}
