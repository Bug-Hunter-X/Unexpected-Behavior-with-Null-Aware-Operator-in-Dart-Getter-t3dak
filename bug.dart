```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable => _myVariable ?? 0; //This line will return 0 if _myVariable is null. This is a common way to provide a default value but it might not handle all cases correctly, this could lead to unexpected behavior in some scenarios.
  set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.myVariable); // Output: 0
  obj.myVariable = 10;
  print(obj.myVariable); // Output: 10
}
```