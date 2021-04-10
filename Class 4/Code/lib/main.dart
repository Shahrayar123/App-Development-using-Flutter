/* Class topic:
        List and Map(dictionary)
*/

void main() {
  // Creating list with different data types values
  var lis = ["123", "ABC", 2324, true, 34.45, 'S', false, "XYZ"];

  // Printing list
  print(lis);

  // Replace element at index 2 with other value(-1234)
  lis[2] = -1234;
  print('After replacing element the list is: ${lis}');

  // ----------- Explore different list functions  -----------

  // To display first element of list
  print(lis.first);
  print('First element in list is: ${lis.first}');

  // To display last element of list
  print(lis.last);
  print("Last element in list is: ${lis.last}");

  // To check element at specific index
  print("Element at index 4 is: ${lis.elementAt(4)}");

  // To check length of list
  print('Length of list is: ${lis.length}');

  // To replace existing element in specified range(index) with other element

  // lis.replaceRange(start, end, replacement)

  lis.replaceRange(2, 5, [null]); // null is a keyword which means 'no value'

  print("After replacing element the list become: ${lis}");

  // To replace multiple element in specified range
  lis.replaceRange(0, 3, ['Hello', 'World', 1234]);

  print("After replacing element the list become: ${lis}");

  // To clear all list

  lis.clear();
  print("After deleting all elements from list, the list becomes: ${lis}");

  // To check whether list is empty or not
  print(lis.isEmpty);

  if (lis.isEmpty)
    print("List is Empty");
  else
    print("List is not Empty");

  // To add elements in list
  //    I am adding elements in empty list (lis)

  lis.add(15);
  lis.add(45);
  lis.add(55.23);
  lis.add(9);
  lis.add(-5);
  lis.add(0);
  lis.add(10.75);

  // lis.add([12, 3, 2, 4, 7]);     // it considers whole as single element

  print("After adding elements in empty list, the list becomes: ${lis}");

  // To check whether the list is not Empty ?
  print(lis.isNotEmpty);

  if (lis.isNotEmpty) {
    print("List is not Empty");
  } else {
    print("List is Empty");
  }

  // To add multiple elements at once in a list

  lis.addAll([7, 23, 15, 22, 35, 46, 2, 4343]);

  print("After adding more numbers the list becomes: ${lis}");

  // To sort list

  lis.sort();
  print("After sorting, the list becomes: ${lis}");

  // To reversed list
  print('After reversing, the list is: ${lis.reversed}');

  // var x = lis.reversed;
  // print(x);

  // To insert element at specific index of list

  lis.insert(4, -123);
  print("After inserting element at index 4, the list is: ${lis}");

  // To insert multiple elements in specified index
  lis.insertAll(6, [-1, -2, -3, -2]);

  print("After inserting elements, the list is: ${lis}");

  // TO remove last element of list

  lis.removeLast();
  print("After removing last element, list is: ${lis}");

  // To remove element at specific index
  lis.removeAt(2);
  print("After removing element at index 2, the list is: ${lis}");

  // To remove specific value in a list
  lis.remove(-2);

  print("After removing -2, the list is: ${lis}");
  // remove first occurance incase if list has multiple same elements at different index

  // To remove element in specified range

  lis.removeRange(0, 4); // lis.removeRange(start, end)

  print("After removing elements in specified range the list is: ${lis}");

  // To remove elements with specific condition
  lis.removeWhere((element) => element % 2 == 0 && element > 0);

  print("After removing element by applying condition, the list is: ${lis}");

  // To retain elements in list which holds specific condition and remove other elements
  lis.retainWhere((element) => element % 2 == 0);

  print(
      "After retaining elements that holds specified condition, the list is: ${lis}");

  // --------------------------------------------------------------------

  // Map (dictionary)   ----->  (key, value) pair

  var mp = {"Name": "John", "Age": 20, 'Class': 12};
  print(mp);

  // To display keys of above dictionary / map
  print('Keys are: ${mp.keys}');

  // To display value of keys
  print("Values are: ${mp.values}");

  // To find length of map / dictionary

  print("Length of Map is: ${mp.length}");

  // To put (key, value) in existing Map if it not exist
  mp.putIfAbsent("Address", () => "USA");
  print("After applying .putIfAbsent(), the Map is: ${mp}");

  // To check whether the dictionary/map is empty or not
  print(mp.isEmpty);
  if (mp.isEmpty) {
    print("Map is Empty");
  } else {
    print("Map is not Empty");
  }

// Checking for Empty map
  var empMap = {};
  print('\nChecking for ${empMap}');
  if (empMap.isEmpty) {
    print("Map is Empty");
  } else {
    print("Map is not Empty");
  }

  // To check whether map is not Empty
  print('\nChecking for ${mp}');
  if (mp.isNotEmpty) {
    print("Map is not Empty");
  } else {
    print("Map is Empty");
  }

  // To remove pair of map with specific key
  mp.remove("Address");
  print("After removing Address, the Map is: ${mp}");

  // To remove pair, which holds specified condition
  // TODO
  //    .removeWhere()

  // To add/concat multiple Maps/Dictionies at once
  // ------ 2 ways ------
  // 1- Using ..addAll()
  // 2- Using ... Operator

  var mp1 = {};
  var mp2 = {"Name": "ABC"};
  var mp3 = {"Age": 20};
  var mp4 = {"Address": "Pakistan"};

  var new_map1 = mp1..addAll(mp2)..addAll(mp3)..addAll(mp4);
  print("\nAfter concating mutiple Map, the result is: ${new_map1}");

  // By using second method
  var new_map2 = {...mp2, ...mp3, ...mp4};

  print("After concating with second way, the result is: ${new_map2}");

  // To check whether specified 'key' is present in Map or not

  if (new_map1.containsKey("Name")) {
    print("Name is present as key in new_map1");
  } else {
    print("Name is not present as key in new_map1");
  }

  // To check whether specified 'value' is present in Map or not
  if (new_map1.containsValue("USA")) {
    print("USA is present as value in new_map1");
  } else {
    print("USA is not present as value in new_map1");
  }

  // To create map using lists (First will become key, Second will become value)
  var lst1 = [1, 2, 3];
  var lst2 = ['Apple', "Mango", "Orange"];

  var m = Map.fromIterables(lst1, lst2);
  print("\nAfter using .fromIterables() method, the created map is: ${m}\n");

  // To iterate over the map

  m.forEach((key, value) {
    print("Key is: ${key} ------ Value is: ${value}");
  });
}
