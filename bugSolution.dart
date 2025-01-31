```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable {
    if (_myVariable == null) {
      throw Exception('Variable is null'); //Handle the null case explicitly
    }
    return _myVariable!;
  }
  set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  try {
    var obj = MyClass(null);
    print(obj.myVariable); 
  } catch (e) {
    print('Error: $e'); //Handles the exception
  }
  var obj2 = MyClass(10);
  print(obj2.myVariable); // Output: 10
}
```