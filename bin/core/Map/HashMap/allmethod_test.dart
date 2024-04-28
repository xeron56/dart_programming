import 'dart:collection';


// ignore: depend_on_referenced_packages
import 'package:test/test.dart';

void main() {
  test('HashMap creation using different methods', () {
    // 1. Using default constructor
    final planetsDefault = HashMap<int, String>();
    planetsDefault[1] = 'Mercury';
    planetsDefault[2] = 'Venus';
    expect(planetsDefault, {1: 'Mercury', 2: 'Venus'});

    // 2. Using HashMap.from()
    final otherMap = {3: 'Earth', 4: 'Mars'};
    final planetsFrom = HashMap<int, String>.from(otherMap);
    expect(planetsFrom, {3: 'Earth', 4: 'Mars'});

    // 3. Using HashMap.fromEntries()
    final entriesList = [MapEntry(5, 'Jupiter'), MapEntry(6, 'Saturn')];
    final planetsFromEntries = HashMap<int, String>.fromEntries(entriesList);
    expect(planetsFromEntries, {5: 'Jupiter', 6: 'Saturn'});

    // 4. Using HashMap.fromIterable()
    final planetsList = ['Uranus', 'Neptune'];
    final planetsFromIterable = HashMap<int, String>.fromIterable(
      planetsList,
      key: (planet) => planetsList.indexOf(planet) + 7,
      value: (planet) => planet,
    );
    expect(planetsFromIterable, {7: 'Uranus', 8: 'Neptune'});

    // 5. Using HashMap.fromIterables()
    final keysList = [8, 9];
    final valuesList = ['Pluto', 'Haumea'];
    final planetsFromIterables = HashMap<int, String>.fromIterables(keysList, valuesList);
    expect(planetsFromIterables, {8: 'Pluto', 9: 'Haumea'});

    // 6. Using identity constructor
    final planetsIdentity = HashMap<int, String>.identity();
    planetsIdentity[10] = 'Makemake';
    expect(planetsIdentity, {10: 'Makemake'});

    // 7. Using HashMap.of()
    final planetsOf = HashMap<int, String>.of(planetsDefault);
    expect(planetsOf, {1: 'Mercury', 2: 'Venus'});
  });
}