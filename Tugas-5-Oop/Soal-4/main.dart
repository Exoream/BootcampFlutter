import 'employee.dart';

void main(List<String> args) {
  // Cara Pertama
  var id = new Employee.id('A001');
  var name = new Employee.name('Al Hilaluddin');
  var department = new Employee.departement('IT');

  print(id.id);
  print(name.name);
  print(department.department);
  print('\n');

  // Cara Kedua
  Employee employee1 = Employee('A01', 'John Doe', 'IT');
  Employee employee2 = Employee('A02', 'Budi Susanto', 'HR');

  print('Employee 1:');
  print('ID: ${employee1.id}');
  print('Name: ${employee1.name}');
  print('Department: ${employee1.department}\n');

  print('Employee 2:');
  print('ID: ${employee2.id}');
  print('Name: ${employee2.name}');
  print('Department: ${employee2.department}\n');
}
